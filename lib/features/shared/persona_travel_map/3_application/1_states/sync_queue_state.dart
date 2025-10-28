import 'package:hooks_riverpod/hooks_riverpod.dart';

class SyncQueueState {
  const SyncQueueState({
    this.pendingCount = const AsyncValue<int>.loading(),
  });

  final AsyncValue<int> pendingCount;

  SyncQueueState copyWith({AsyncValue<int>? pendingCount}) {
    return SyncQueueState(
      pendingCount: pendingCount ?? this.pendingCount,
    );
  }
}
