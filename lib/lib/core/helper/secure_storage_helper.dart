import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageHelper {
  final storage = const FlutterSecureStorage();

  ///save to secure storage
  Future<bool> saveToSecureStorage(
      {required dynamic value, required String key}) async {
    try {
      await storage.write(key: key, value: jsonEncode(value));
      return true;
    } catch (e) {
      return false;
    }
  }

  ///delete auth token
  Future<void> deleteSecureStorageToken({required String key}) async {
    await storage.delete(key: key);
  }

  ///get saved data from secure storage
  Future<String> getSecureStorageData({required String key}) async {
    var value = await storage.read(key: key);
    if (value != null) {
      return value;
    } else {
      return "";
    }
  }
}
