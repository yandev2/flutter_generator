import '../core/string_extensions.dart';

/// Membangun scaffolding lapisan Presentation berbasis **Riverpod 3.x**.
///
/// Untuk setiap page menghasilkan 3 file:
/// - `states/<page>_state.dart`     → state immutable (`@freezed`)
/// - `providers/<page>_provider.dart` → Notifier (`@riverpod`)
/// - `views/<page>_view.dart`       → `ConsumerWidget`
class RiverpodPresentationBuilder {
  /// State immutable untuk page. Dipisah dari Notifier agar mudah di-test
  /// dan konsisten dengan pola Clean Architecture.
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
  }) = _${stateName};
}
''';
  }

  /// Notifier berbasis code-generation `@riverpod`.
  /// Provider yang dihasilkan generator: `${pageName}Provider`.
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
  // Contoh mengubah state:
  // void setLoading(bool value) => state = state.copyWith(isLoading: value);
}
''';
  }

  /// View berbasis [ConsumerWidget]. Reaktif via `ref.watch`.
  String buildView(String pageName) {
    final viewName = '${pageName.toPascalCase()}View';
    final providerName = '${pageName.toCamelCase()}Provider';
    final providerFileName = '${pageName.toSnakeCase()}_provider.dart';

    return '''import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/$providerFileName';

class $viewName extends ConsumerWidget {
  const $viewName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final state = ref.watch($providerName);
    // final notifier = ref.read($providerName.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('$viewName'),
        centerTitle: true,
      ),
      body: Center(
        child: state.isLoading
            ? const CircularProgressIndicator()
            : Text(
                '$viewName is working',
                style: theme.textTheme.titleLarge,
              ),
      ),
    );
  }
}
''';
  }
}
