// ignore_for_file: non_constant_identifier_names, unused_local_variable

import 'dart:convert';
import 'dart:io';

void english_p() {
  String ca = File('countries.json').readAsStringSync();

  var countries = json.decode(ca);

  var englishSpeakingCountries = countries
      .where((country) => country['language']?.contains('English') ?? false)
      .toList();

  for (var country in englishSpeakingCountries) {
    print('COUNTRY: ${country['name']}, LANGUAGE: ${country['language']}');
  }
}
