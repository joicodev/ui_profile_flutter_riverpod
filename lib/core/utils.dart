import 'dart:convert';

import 'package:flutter/services.dart';

class UtilsApp {
  // load from json file
  static Future<Map<String, dynamic>> loadFromJsonFile(String fileName) async {
    final fileString = await rootBundle.loadString(fileName);
    return json.decode(fileString);
  }
}
