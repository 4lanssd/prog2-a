import 'dart:convert';
import 'dart:io';

// ignore: non_constant_identifier_names
void print_cca() {
  String ca = File('countries.json').readAsStringSync();

  List<Map<String, dynamic>> countries = jsonDecode(
    ca,
    reviver: (key, value) {
      if (key is String) {
        return value;
      } else if (key is int) {
        return Map<String, dynamic>.from(value as Map<String, dynamic>);
      } else {
        return List<Map<String, dynamic>>.from(value as List);
      }
    },
  );

  countries.sort((a, b) {
    return a['code']?.compareTo(b['code']);
  });

  for (var country in countries) {
    print('${country['code']}, ${country['name']}');
  }
}
