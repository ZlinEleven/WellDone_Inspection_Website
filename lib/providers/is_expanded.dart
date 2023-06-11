import 'package:flutter_riverpod/flutter_riverpod.dart';

class IsExpandedNotifier extends StateNotifier<bool> {
  IsExpandedNotifier() : super(true);

  void setIsExpanded(bool isExpanded) {
    state = isExpanded;
  }
}

final isExpandedProvider = StateNotifierProvider<IsExpandedNotifier, bool>(
    (ref) => IsExpandedNotifier());
