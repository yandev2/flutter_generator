extension StringCasingExtension on String {
  String toCamelCase() {
    if (isEmpty) return this;
    final words = split(RegExp(r'[_\-\s]'));
    if (words.isEmpty) return this;
    
    final firstWord = words.first.toLowerCase();
    final restWords = words.skip(1).map((w) {
      if (w.isEmpty) return '';
      return w.substring(0, 1).toUpperCase() + w.substring(1).toLowerCase();
    }).join('');
    
    return firstWord + restWords;
  }

  String toPascalCase() {
    final camelCase = toCamelCase();
    if (camelCase.isEmpty) return this;
    return camelCase.substring(0, 1).toUpperCase() + camelCase.substring(1);
  }

  String toSnakeCase() {
    if (isEmpty) return this;
    return replaceAllMapped(RegExp(r'[A-Z]'), (match) {
      return '_${match.group(0)?.toLowerCase()}';
    }).replaceAll(RegExp(r'^_'), '');
  }
}
