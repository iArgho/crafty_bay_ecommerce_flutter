import 'dart:convert';
import 'dart:developer';
import 'package:crafty_bay_ecommerce_flutter/data/model/network_response.dart';
import 'package:http/http.dart' as http;

class NetworkCaller {
  Future<NetworkResponse> getRequest(String url, {Map<String, String>? headers}) async {
    try {
      http.Response response = await http
          .get(Uri.parse(url), headers: headers)
          .timeout(const Duration(seconds: 10));

      log("GET Response: Status Code - ${response.statusCode}, Body - ${response.body}");

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
          responseJson: jsonDecode(response.body),
        );
      }
    } catch (e) {
      log("GET Request Error: ${e.toString()}");
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        responseJson: {'error': e.toString()},
      );
    }
  }

  Future<NetworkResponse> postRequest(String url, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    log("POST Request to $url with body: $body");
    try {
      http.Response response = await http
          .post(
            Uri.parse(url),
            headers: headers ?? {'Content-Type': 'application/json'},
            body: jsonEncode(body),
          )
          .timeout(const Duration(seconds: 10));

      log("POST Response: Status Code - ${response.statusCode}, Body - ${response.body}");

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
          responseJson: jsonDecode(response.body),
        );
      }
    } catch (e) {
      log("POST Request Error: ${e.toString()}");
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        responseJson: {'error': e.toString()},
      );
    }
  }
}