import '../core/string_extensions.dart';

/// Membangun scaffolding lapisan Presentation berbasis **Riverpod 3.x**.
class RiverpodPresentationBuilder {
  String buildState(String pageName) {
    final stateName = '${pageName.toPascalCase()}State';
    final stateFileName = '${pageName.toSnakeCase()}_state.dart';
    return '''import 'package:freezed_annotation/freezed_annotation.dart';

part '${stateFileName.replaceAll('.dart', '.freezed.dart')}';

@freezed
abstract class $stateName with _\$$stateName {
  const factory $stateName({
    @Default(false) bool isLoading,
    String? errorMessage,
  }) = _$stateName;
}
''';
  }

  String buildProvider(String pageName) {
    final notifierName = pageName.toPascalCase();
    final stateName = '${pageName.toPascalCase()}State';
    final stateFileName = '${pageName.toSnakeCase()}_state.dart';
    final providerFileName = '${pageName.toSnakeCase()}_provider.dart';

    return '''import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../states/$stateFileName';

part '${providerFileName.replaceAll('.dart', '.g.dart')}';

@riverpod
class $notifierName extends _\$$notifierName {
  @override
  $stateName build() => const $stateName();

  // TODO: Implement $notifierName logic
}
''';
  }

  String buildPage(String pageName) {
    final pageClassName = '${pageName.toPascalCase()}Page';
    final pageCamel = pageName.toCamelCase();
    final providerName = '${pageCamel}Provider';
    final providerFileName = '${pageName.toSnakeCase()}_provider.dart';

    return '''import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/$providerFileName';

class $pageClassName extends ConsumerWidget {
  const $pageClassName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final ${pageCamel}State = ref.watch($providerName);
    final ${pageCamel}Notifier = ref.read($providerName.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('$pageClassName'),
        centerTitle: true,
      ),
      body: Center(
        child: ${pageCamel}State.isLoading
            ? const CircularProgressIndicator()
            : Text(
                '$pageClassName is working',
                style: theme.textTheme.titleLarge,
              ),
      ),
    );
  }
}
''';
  }
}
