import 'package:dart_fundamentals_packages/classes/country.dart';
import 'package:http/http.dart' as http;

import 'package:dart_fundamentals_packages/classes/reqres_response.dart';

void getReqResUsersService() {
  final url = Uri.parse('https://reqres.in/api/users');
  http.get(url).then((res) {
    final resReqResponse = (reqResResponseFromJson(res.body));
    print('page: ${resReqResponse.page}');
    print('per_page: ${resReqResponse.perPage}');
    print('id of third element: ${resReqResponse.data[2].id}');
  });
}

void getCountryService() {
  final url = Uri.parse('https://restcountries.com/v3.1/alpha/us');
  http.get(url).then((res) {
    final country = countryFromJson(res.body).first;
    print('Country: ${country.name.official}');
    print('Population: ${country.population}');
    print('Borders: ${country.borders.join(", ")}');
    print('Language: ${country.languages.eng}');
    print('Lat: ${country.latlng[0]}');
    print('Lng: ${country.latlng[1]}');
    print('Currency: ${country.currencies}');
    print('Flag: ${country.flag}');
  });
}
