import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:rounded_task/model/image_model.dart';

class ApiService {
  final baseUrl = "https://api.unsplash.com/photos/random";

  Future<Images> getResponse() async {
    final uri = Uri.parse(baseUrl);
    final response = await http.get(uri, headers: {
      HttpHeaders.authorizationHeader:
          'Client-ID mT8hj53DywChJkbscZAN5aHio9v2M9impW_i-VIc7vs',
      HttpHeaders.contentTypeHeader: 'application/json',
    });

    if (response.statusCode == 200) {
      var some = Images.fromJson(jsonDecode(response.body));

      return some;
    } else if (response.statusCode == 401) {
      throw Exception('Error 401');
    } else if (response.statusCode == 429) {
      throw Exception('Error 429');
    } else {
      throw Exception('null');
    }
  }
}

final apiProvider = Provider<ApiService>((ref) => ApiService());
