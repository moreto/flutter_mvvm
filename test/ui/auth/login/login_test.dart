// lib/ui/auth/login_request_model_test.dart
import 'dart:convert';

import 'package:flutter_mvvm/data/auth/login/login_request_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginRequestModel', () {
    test('fromJson creates a valid LoginRequestModel from JSON', () {
      final jsonString = '{"email": "test@example.com", "senha": "password123"}';
      final model = loginRequestModelFromJson(jsonString);

      expect(model.email, 'test@example.com');
      expect(model.senha, 'password123');
    });

    test('toJson converts a LoginRequestModel to JSON correctly', () {
      final model = LoginRequestModel(email: 'test@example.com', senha: 'password123');
      final jsonMap = model.toJson();

      expect(jsonMap['email'], 'test@example.com');
      expect(jsonMap['senha'], 'password123');
    });

    test('fromJson and toJson are inverses', () {
      final jsonString = '{"email": "test@example.com", "senha": "password123"}';
      final model = loginRequestModelFromJson(jsonString);
      final resultJsonString = loginRequestModelToJson(model);

      expect(json.decode(resultJsonString), json.decode(jsonString));
    });
  });
}
