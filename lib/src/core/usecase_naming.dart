import 'string_extensions.dart';

/// Class name konsisten dengan file `{snake}_usecase.dart`.
String usecaseClassName(String methodOrPageName) =>
    '${methodOrPageName.toSnakeCase().toPascalCase()}Usecase';

String usecaseFileName(String methodOrPageName) =>
    '${methodOrPageName.toSnakeCase()}_usecase.dart';
