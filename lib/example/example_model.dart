import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';


abstract class _SharedPreferencesKeys {
  static const namekey = 'name_key';
}

abstract class _FlutterSecureStorageKey {
  static const tokenKey = 'token_key';
}

class ExampleWidgetModel {
  final _storage = SharedPreferences.getInstance();
  final _secureStorage = const FlutterSecureStorage();

  Future<void> readName() async {
    final sorage = await _storage;
    final name = sorage.getString(_SharedPreferencesKeys.namekey);
    print(name);
  }
  Future<void> setName() async {
    final sorage = await _storage;
    sorage.setString(_SharedPreferencesKeys.namekey, 'Samvel');
  }
  Future<void> readToken() async {
    final token = await _secureStorage.read(key: _FlutterSecureStorageKey.tokenKey);
    print(token);
  }
  Future<void> setToken() async {
    _secureStorage.write(key: _FlutterSecureStorageKey.tokenKey, value: 'h3u23iu23bibeiu3eiue');
  }
}