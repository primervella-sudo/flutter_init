# 構造計画書：AI Travel Persona Map

> 本ドキュメントは Stage2（構造計画）で合意した構造の確定版です。`AI/architecture/lib/features/features_architecture.md` に準拠し、Flutter アプリ「AI Travel Persona Map」の実装対象ファイルを定義します。

## メタ情報
- プロジェクト名: AI Travel Persona Map
- バージョン: v1.0.0
- 最終更新日: 2025-10-27
- 作成者: persona_travel team

## 構造ポリシー（重要制約）
- クリーンアーキテクチャ構造を厳守し、`lib/features/<permission>/<feature>/` 配下で責務分割を徹底する。
- 新規ディレクトリの追加禁止。定義済みディレクトリのみ使用。
- ファイル名は `snake_case`、クラスは `UpperCamelCase`、Riverpod の Provider は `@riverpod` マクロ利用。

## 目的と範囲
- 対象フィーチャー: `shared/persona_travel_map`
- 対象レイヤー: Domain / Infrastructure / Application / Presentation の全層
- 対象機能: スポット記録、AI レビュー生成、ペルソナ管理、共有リンク、オフライン同期、多言語対応、初回起動＆エラーハンドリング

## 依存・技術参照
- 技術選定: `AI/architecture/technology_stack.md`
- 使用ライブラリ: Riverpod, hooks_riverpod, GoRouter, Freezed, Drift, google_maps_flutter, google_generative_ai, intl, image_picker, connectivity_plus ほか

## ディレクトリ構造（計画）
```
lib/
  core/
    routing/
    routing/path/
    theme/
    api/
    exceptions/
    database/
    database/table/
  features/
    shared/
      persona_travel_map/
        1_domain/
          1_entities/
          2_repositories/
          3_usecases/
          exceptions/
        2_infrastructure/
          1_models/
          2_data_sources/
            1_local/
              exceptions/
            2_remote/
              exceptions/
          3_repositories/
        3_application/
          1_states/
          2_providers/
          3_notifiers/
        4_presentation/
          1_widgets/
            1_atoms/
            2_molecules/
            3_organisms/
          2_pages/
```

## ファイル定義表
| パス | ファイル名 | 役割 |
| --- | --- | --- |
| `lib/features/shared/persona_travel_map/1_domain/1_entities/` | `spot_entity.dart` | スポット集約（写真、共有トークン含む）の Freezed エンティティ |
| 同上 | `persona_entity.dart` | ペルソナ属性（トーン・プロンプト等）エンティティ |
| 同上 | `app_settings_entity.dart` | ローカル設定（言語、APIキー等）エンティティ |
| `1_domain/2_repositories/` | `spot_repository.dart` | スポットデータ取得・永続化の抽象リポジトリ |
| 同上 | `persona_repository.dart` | ペルソナ管理リポジトリ抽象インターフェース |
| 同上 | `app_settings_repository.dart` | アプリ設定リポジトリ抽象インターフェース |
| 同上 | `sync_repository.dart` | オフラインキュー管理インターフェース |
| `1_domain/3_usecases/` | `create_spot_usecase.dart` | スポット新規作成（バリデーション、容量チェック） |
| 同上 | `update_spot_usecase.dart` | スポット更新（写真順序、レビュー切り替え） |
| 同上 | `generate_review_usecase.dart` | Generative AI 呼び出し＆言語判定 |
| 同上 | `manage_persona_usecase.dart` | ペルソナ CRUD（デフォルト制御） |
| 同上 | `share_link_usecase.dart` | 共有トークン生成・失効 |
| 同上 | `sync_drafts_usecase.dart` | 同期キュー実行・競合解決 |
| 同上 | `toggle_language_usecase.dart` | UI 言語切替＆保存 |
| `1_domain/exceptions/` | `domain_failures.dart` | ドメイン層例外（容量超過、無効座標など）定義 |
| `2_infrastructure/1_models/` | `spot_model.dart` | Drift モデル（Spot テーブル対応） |
| 同上 | `persona_model.dart` | Drift モデル（Persona テーブル） |
| 同上 | `app_settings_model.dart` | Drift モデル（設定テーブル） |
| 同上 | `photo_model.dart` | 写真メタデータテーブルモデル |
| `2_infrastructure/2_data_sources/1_local/` | `spot_local_data_source.dart` | Drift を用いたスポット CRUD 実装 |
| 同上 | `persona_local_data_source.dart` | ペルソナ管理ローカルデータソース |
| 同上 | `settings_local_data_source.dart` | SharedPreferences + Drift 混合アクセス |
| 同上 | `sync_queue_local_data_source.dart` | 同期キュー登録・取得 |
| 同上 | `photo_storage_data_source.dart` | 端末ストレージの読み書き・圧縮制御 |
| `1_local/exceptions/` | `local_data_exceptions.dart` | DB/ストレージエラーの分類 |
| `2_remote/` | `maps_remote_data_source.dart` | Google Maps API との連携（ジオコーディング、検索） |
| 同上 | `ai_review_remote_data_source.dart` | Generative AI API 呼び出し |
| `2_remote/exceptions/` | `remote_data_exceptions.dart` | API エラー種別（タイムアウト、クォータ超過等） |
| `2_infrastructure/3_repositories/` | `spot_repository_impl.dart` | リポジトリ実装（Domain 依存注入） |
| 同上 | `persona_repository_impl.dart` | ペルソナリポジトリ実装 |
| 同上 | `app_settings_repository_impl.dart` | 設定リポジトリ実装 |
| 同上 | `sync_repository_impl.dart` | 同期処理リポジトリ実装 |
| `3_application/1_states/` | `spot_state.dart` | ホーム地図の状態（クラスタ情報含む） |
| 同上 | `spot_detail_state.dart` | スポット詳細画面用状態（写真表示順、共有状態） |
| 同上 | `persona_state.dart` | ペルソナ一覧・選択状態 |
| 同上 | `app_settings_state.dart` | 言語・キー設定状態 |
| 同上 | `sync_state.dart` | 同期状況（キュー、進捗） |
| `3_application/2_providers/` | `spot_providers.dart` | スポット関連 Provider 宣言（UseCase 依存） |
| 同上 | `persona_providers.dart` | ペルソナ Provider |
| 同上 | `app_settings_providers.dart` | 設定 Provider |
| 同上 | `ai_review_providers.dart` | レビュー生成コントローラ Provider |
| 同上 | `sync_providers.dart` | 同期・ネットワーク監視 Provider |
| `3_application/3_notifiers/` | `spot_notifier.dart` | SpotState の更新（@riverpod） |
| 同上 | `spot_detail_notifier.dart` | 詳細画面の状態管理 |
| 同上 | `persona_notifier.dart` | ペルソナ選択・削除制御 |
| 同上 | `app_settings_notifier.dart` | 言語・APIキー設定の更新 |
| 同上 | `sync_notifier.dart` | 同期キュー処理・リトライ管理 |
| `4_presentation/1_widgets/1_atoms/` | `persona_chip.dart` | ペルソナ選択チップ |
| 同上 | `status_badge.dart` | 同期/共有ステータス表示 |
| `4_presentation/1_widgets/2_molecules/` | `photo_picker_row.dart` | 写真追加・並び替え UI |
| 同上 | `review_toggle_header.dart` | AI ↔ 手動レビュー切替 UI |
| `4_presentation/1_widgets/3_organisms/` | `spot_card.dart` | ゲストビュー用スポットカード |
| `4_presentation/2_pages/` | `map_home_page.dart` | ホーム地図画面（Google Maps 表示） |
| 同上 | `spot_detail_page.dart` | スポット詳細画面 |
| 同上 | `spot_edit_page.dart` | 投稿作成/編集画面 |
| 同上 | `persona_management_page.dart` | ペルソナ管理画面 |
| 同上 | `onboarding_flow_page.dart` | 初回起動・権限リクエストフロー |
| 同上 | `share_viewer_page.dart` | 共有リンクからのゲスト閲覧 |
| 同上 | `settings_page.dart` | API キー設定・キャッシュ削除 |

## ルーティング計画
- ルート一覧（GoRouter 用）
  - `/` : `MapHomePage`
  - `/spot/new` : `SpotEditPage`
  - `/spot/:id` : `SpotDetailPage`
  - `/persona` : `PersonaManagementPage`
  - `/onboarding` : `OnboardingFlowPage`
  - `/share/:token` : `ShareViewerPage`
  - `/settings` : `SettingsPage`
- パス定義: `lib/core/routing/path/` に `persona_travel_map_paths.dart` を追加し、定数とパラメータキーを定義。
- 画面登録: `lib/core/routing/router.dart`（既存前提）内で上記ページを GoRoute として定義。

## 状態管理計画（Riverpod）
- Provider 配置: `3_application/2_providers/` に機能別ファクトリを置き、UseCase／Repository を注入。
- Notifier: `3_application/3_notifiers/` に `@riverpod` で生成する Notifier クラスを配置し、状態クラス（Freezed）を `1_states/` に定義。
- UI: Presentation 層からは Provider/Notifier のみ参照し、直接 UseCase を呼ばない。

## データソース計画
- Local Data Sources: Drift テーブル（Spot/Persona/Photo/Settings/SyncQueue）を実装し、写真ストレージ操作を別 DataSource に切り出す。
- Remote Data Sources: Google Maps API（ジオコーディング、地図設定）と Google Generative AI API（レビュー生成）に分割。各 DataSource にリトライ戦略を実装。
- 例外: `local_data_exceptions.dart` と `remote_data_exceptions.dart` で API/ストレージエラーを明確化。

## モデル・リポジトリ計画
- Drift モデルは `*.drift.dart` (生成) と `*_model.dart` (定義) を Freezed + Drift で構築。
- Repository 実装は Domain の抽象を満たす形で DataSource を合成し、競合解決・フォールバック（APIキー切替）ロジックを実装。
- SyncRepository でオフラインキュー制御（enqueue/dequeue）とネットワーク状態連動。

## コード生成・ビルド
- Freezed、Riverpod、Drift のビルドランナーを活用。
- コマンド: `dart run build_runner build --delete-conflicting-outputs`
- 生成ファイル: `*.freezed.dart`, `*.g.dart`, `*.drift.dart`, `*.riverpod.dart`

## 実装順序（レイヤー別）
1. Domain: エンティティ・リポジトリインターフェース・UseCase・例外定義
2. Infrastructure: Drift テーブル、DataSource、Repository 実装
3. Application: State/Provider/Notifier（ユースケース連携）
4. Presentation: ページ・ウィジェット（多言語対応、アクセシビリティ考慮）
5. 付随処理: オンボーディングフロー、共有ビューア、同期通知

## 検証・合意
- レビュー観点
  - 要件の全ユースケースをカバーするエンティティ・ユースケースが存在するか
  - オフライン同期・多言語対応・エラーハンドリングが適切な層で定義されているか
  - Presentation 層のページがルート計画と整合しているか
- 合意文言
  - 「AI Travel Persona Map の構造計画に合意し、第三段階（実装フェーズ）へ進みます。」

## 更新履歴
- 2025-10-27: v1.0.0 構造計画書作成（persona_travel team）

## 参考・関連
- Stage2 手順: `AI/instructions/002/project_rules_stage2_step1.md` ほか
- Stage3 実装ルール: `AI/instructions/003/project_rules_stage3_step3_0_overview.md`
- 技術スタック: `AI/architecture/technology_stack.md`
- 機能要件: `AI/document/application_specification.md`