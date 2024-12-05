class NetworkResponse {
  final bool isSuccess;
  final int statusCode;
  final dynamic responseJson;

  NetworkResponse(bool bool, int statusCode, jsonDecode, {
    required this.isSuccess,
    required this.statusCode,
    required this.responseJson,
  });
}