import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_generator/flutter_generator.dart';

void main() {
  group('StringCasingExtension', () {
    test('toCamelCase converts snake_case correctly', () {
      expect('user_name'.toCamelCase(), 'userName');
      expect('first_name_last'.toCamelCase(), 'firstNameLast');
      expect('simple'.toCamelCase(), 'simple');
    });

    test('toPascalCase converts snake_case correctly', () {
      expect('user_name'.toPascalCase(), 'UserName');
      expect('auth_repository'.toPascalCase(), 'AuthRepository');
    });

    test('toSnakeCase converts PascalCase correctly', () {
      expect('UserName'.toSnakeCase(), 'user_name');
      expect('AuthRepository'.toSnakeCase(), 'auth_repository');
    });
  });

  group('JsonParser', () {
    test('parses simple JSON correctly', () {
      final parser = JsonParser();
      final json = {'name': 'John', 'age': 30, 'active': true};
      final classes = parser.parse('User', json);

      expect(classes.length, 1);
      expect(classes.first.name, 'User');
      expect(classes.first.fields.length, 3);
    });

    test('parses nested JSON correctly', () {
      final parser = JsonParser();
      final json = {
        'name': 'John',
        'address': {'city': 'Jakarta', 'zip': '12345'}
      };
      final classes = parser.parse('User', json);

      expect(classes.length, 2); // User + Address
    });
  });
}
