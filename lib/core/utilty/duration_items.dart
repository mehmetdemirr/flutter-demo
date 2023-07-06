enum DurationItem {
  small,
  medium,
  large,
}

extension DurationItems on DurationItem {
  Future<Duration> str() async {
    return switch (this) {
      DurationItem.small => const Duration(seconds: 1),
      DurationItem.medium => const Duration(seconds: 2),
      DurationItem.large => const Duration(seconds: 3),
    };
  }
}
