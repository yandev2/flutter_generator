extension StringCasingExtension on String {
  String toCamelCase() {
    final pascal = toPascalCase();
    if (pascal.isEmpty) return this;
    return pascal[0].toLowerCase() + pascal.substring(1);
  }

  String toPascalCase() {
    if (isEmpty) return this;

    final words = toSnakeCase().split('_').where((word) => word.isNotEmpty);
    return words
        .map(
          (word) => word[0].toUpperCase() + word.substring(1).toLowerCase(),
        )
        .join();
  }

  String toSnakeCase() {
    if (isEmpty) return this;
    return replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return '_${match.group(0)?.toLowerCase()}';
    }).replaceAll(RegExp(r'^_'), '');
  }
}
