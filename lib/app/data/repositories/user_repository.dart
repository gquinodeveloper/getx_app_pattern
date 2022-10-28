import 'package:app_pattern_getx/app/data/models/request/request_auth_model.dart';
import 'package:app_pattern_getx/app/data/models/response/response_auth_model.dart';
import 'package:app_pattern_getx/app/data/models/response/response_information_model.dart';
import 'package:app_pattern_getx/app/data/providers/user_provider.dart';
import 'package:get/get.dart';

class UserRepository {
  final _apiProvider = Get.find<UserProvider>();

  Future<ResponseAuthModel> postAuth(RequestAuthModel requestAuth) =>
      _apiProvider.postAuth(
        requestAuth,
      );

  Future<ResponseInformationModel> getInformation({
    required String token,
    required int idUser,
  }) =>
      _apiProvider.getInformation(token: token, idUser: idUser);
}
