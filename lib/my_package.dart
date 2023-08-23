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
