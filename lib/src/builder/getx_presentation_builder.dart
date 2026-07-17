import '../core/string_extensions.dart';

class GetxPresentationBuilder {
  String buildController(String pageName) {
    final className = '${pageName.toPascalCase()}Controller';
    return '''import 'package:get_x_master/get_x_master.dart';

class $className extends GetxController {
  // TODO: Implement $className
}
''';
  }

  String buildBinding(String pageName) {
    final bindingName = '${pageName.toPascalCase()}Binding';
    final controllerName = '${pageName.toPascalCase()}Controller';
    final controllerFileName = '${pageName.toSnakeCase()}_controller.dart';

    return '''import 'package:get_x_master/get_x_master.dart';
import '../controllers/$controllerFileName';

class $bindingName extends Bindings {
  @override
  void dependencies() {
    Get.smartLazyPut<$controllerName>(() => $controllerName());
  }
}
''';
  }

  String buildView(String pageName) {
    final viewName = '${pageName.toPascalCase()}View';
    final controllerName = '${pageName.toPascalCase()}Controller';
    final controllerFileName = '${pageName.toSnakeCase()}_controller.dart';

    return '''import 'package:flutter/material.dart';
import 'package:get_x_master/get_x_master.dart';
import '../controllers/$controllerFileName';

class $viewName extends ReactiveGetView<$controllerName> {
  const $viewName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('$viewName'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          '$viewName is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
''';
  }
}
