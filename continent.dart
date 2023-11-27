import 'dart:convert';
import 'dart:io';

void continent() {
  String jsonString = File('countries.json').readAsStringSync();

  var countries = json.decode(jsonString);

  var continentCountMap = {};

  for (var country in countries) {
    String continent = country['continent'];
    continentCountMap[continent] = (continentCountMap[continent] ?? 0) + 1;
  }

  print('Continent\tQty');
  continentCountMap.forEach((continent, qty) {
    print('$continent\t\t$qty');
  });
}
