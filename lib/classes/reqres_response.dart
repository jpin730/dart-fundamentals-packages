import 'dart:convert';

import 'package:dart_fundamentals_packages/classes/user.dart';

ReqResResponse reqResResponseFromJson(String str) =>
    ReqResResponse.fromJson(json.decode(str));

String reqResResponseToJson(ReqResResponse data) => json.encode(data.toJson());

class ReqResResponse {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<User> data;
  Support support;

  ReqResResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  factory ReqResResponse.fromJson(Map<String, dynamic> json) => ReqResResponse(
        page: json['page'],
        perPage: json['per_page'],
        total: json['total'],
        totalPages: json['total_pages'],
        data: List<User>.from(json['data'].map((x) => User.fromJson(x))),
        support: Support.fromJson(json['support']),
      );

  Map<String, dynamic> toJson() => {
        'page': page,
        'per_page': perPage,
        'total': total,
        'total_pages': totalPages,
        'data': List<dynamic>.from(data.map((x) => x.toJson())),
        'support': support.toJson(),
      };
}
