import 'dart:convert';
import 'dart:developer';

import 'package:crafty_bay_ecommerce_flutter/data/model/network_response.dart';
import 'package:http/http.dart' as http;

class NetworkCaller {
  Future<NetworkResponse> getRequest(String url) async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return NetworkResponse(
          isSuccess: true,
          statusCode: response.statusCode,
          responseJson: jsonDecode(response.body), // Parse response JSON
        );
      } else {
        return NetworkResponse(
          isSuccess: false,
          statusCode: response.statusCode,
          responseJson: null,
        );
      }
    } catch (e) {
      log("GET Request Error: ${e.toString()}");
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        responseJson: null,
      );
    }
  }

  Future<NetworkResponse> postRequest(String url, Map<String, dynamic> body,
      {bool isLogin = false}) async {
    log("POST Request to $url with body: $body");
    try {
      http.Response response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode(body),
      );

      log("POST Response Status Code: ${response.statusCode}");
      log("POST Response Body: ${response.body}");

      if (response.statusCode == 200) {
        return NetworkResponse(
          isSuccess: true,
          statusCode: response.statusCode,
          responseJson: jsonDecode(response.body),
        );
      } else {
        return NetworkResponse(
          isSuccess: false,
          statusCode: response.statusCode,
          responseJson: null,
        );
      }
    } catch (e) {
      log("POST Request Error: ${e.toString()}");
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        responseJson: null,
      );
    }
  }
}