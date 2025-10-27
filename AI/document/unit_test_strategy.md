# 単体テスト方針（Stage3 ドメイン層）

本ドキュメントは `shared/persona_travel_map` 機能における重要ユースケースの単体テスト観点を整理したものです。テストは `test/features/shared/persona_travel_map/` 配下に配置し、`flutter test` で自動化します。

## 1. レビュー生成 (`GenerateReviewUsecase`)
- **目的**: AI レビュー生成ロジックが入力条件に応じて適切に分岐することを確認。
- **主な検証観点**
  - 既存レビューがあり `forceRegenerate=false` の場合はリポジトリ呼び出しを行わず既存テキストを返す。
  - `forceRegenerate=true` の場合やレビューが空文字列の場合に `ReviewRepository.generateReview` が呼ばれる。
  - リポジトリから `DomainResult.failure` が返却された場合に同じ失敗を伝搬する。
- **テスト実装メモ**
  - `ReviewRepository` をモックし、`when` / `verify` で呼び出し回数を確認。
  - `GenerateReviewInput` を `copyWith` で調整し各ケースを網羅。

## 2. スポット作成 (`CreateSpotUsecase`)
- **目的**: バリデーション（文字数、座標範囲、写真枚数・容量）が仕様通りに動作することを担保。
- **主な検証観点**
  - 正常系: 有効な `Spot` を渡した際に `SpotRepository.createSpot` へ委譲される。
  - 異常系: タイトル・住所の文字数超過、緯度経度範囲外、写真枚数超過、容量超過で `DomainFailure.validation` / `DomainFailure.storageLimitExceeded` が返る。
- **テスト実装メモ**
  - `Spot` は `copyWith` とヘルパーで生成。
  - 容量チェックは `SpotPhoto(size: ...)` を複数追加して検証。

## 3. スポット更新 (`UpdateSpotUsecase`)
- **目的**: 作成時と同一バリデーションを共有し、更新リクエストが正しく委譲されることを確認。
- **主な検証観点**
  - バリデーション成功時に `SpotRepository.updateSpot` が呼ばれる。
  - 失敗時はリポジトリを呼び出さず、`CreateSpotUsecase.validate` と同じ結果になる。

## 4. 共有リンク (`ShareLinkUsecase`)
- **目的**: トークン生成・有効期限付与・失効処理が適切に行われることを検証。
- **主な検証観点**
  - `createLink` で 16 バイトのランダムトークンが生成され、`shareToken` が設定される。
  - `expiresIn` を指定した場合に `shareExpiresAt` が現在時刻+αになる。
  - `revokeLink` でトークンと期限が `null` に戻る。
  - `SpotRepository.updateSpot` への委譲が毎回行われる。
- **テスト実装メモ**
  - `Random` をシード固定のダミーに差し替え deterministic なトークンを検証。

## 5. ペルソナ管理 (`ManagePersonaUsecase`)
- **目的**: バリデーションとデフォルトペルソナ保護、再割り当て条件の検証。
- **主な検証観点**
  - 名称/プロンプト文字数制限のバリデーション。
  - デフォルトペルソナ削除時に `DomainFailure.conflict` が返る。
  - `setAsDefault` がリポジトリへ委譲される。
- **テスト実装メモ**
  - `Persona` のモックを生成し、`isDefault` フラグ切替でケース分け。

## 6. 言語切り替え (`ToggleLanguageUsecase`)
- **目的**: 設定読み込みと保存の流れ、同一言語指定時の早期リターンを確認。
- **主な検証観点**
  - 現在言語と同じ指定の場合、保存処理を呼ばず `DomainResult.success(current)` を返す。
  - 異なる言語指定時に `AppSettingsRepository.save` が呼ばれ、保存成功時は更新後の設定を返す。
  - いずれかの段階で `DomainFailure` が発生した場合、失敗を伝搬する。
- **テスト実装メモ**
  - `DomainResult` をヘルパー（`DomainResult.success`, `DomainResult.failure`）で生成。
  - `copyWith` の結果比較は `expect(actual, equals(expected))` を用いる。

## 7. 同期キュー (`SyncDraftsUsecase`)
- **目的**: エンキュー・処理・件数監視の委譲動作を確認。
- **主な検証観点**
  - `enqueue` / `processQueue` が `SyncRepository` の対応メソッドに直結している。
  - `watchPendingCount` から返る `Stream<int>` がラップされずそのまま委譲される。
- **テスト実装メモ**
  - `StreamController<int>` を用いたモックストリームでイベント伝播を検証。

---
- モック生成には `mockito` もしくは `package:mocktail` を検討。既存依存関係のため現在は `mockito` を利用。
- テストデータ生成は `test/utils/fixtures/` に専用のヘルパーを追加し、Freezed の `copyWith` を活用する。
- CI/ローカルで `flutter test` を Stage3 の各レイヤー完了時に実行し、`flutter analyze` とセットでチェックする。