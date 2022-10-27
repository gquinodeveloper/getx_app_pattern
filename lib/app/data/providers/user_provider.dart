import 'package:app_pattern_getx/app/data/models/request/request_auth_model.dart';
import 'package:app_pattern_getx/app/data/models/response/response_auth_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  final _dio = Dio();

  Future<ResponseAuthModel> postAuth(RequestAuthModel requestAuth) async {
    final response = await _dio.post(
      "https://api-reservation-flutter.herokuapp.com/api/user/auth",
      data: requestAuth.toJson(),
    );
    return ResponseAuthModel.fromJson(response.data);
  }
}
