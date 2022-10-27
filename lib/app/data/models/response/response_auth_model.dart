class ResponseAuthModel {
    ResponseAuthModel({
        this.success = false,
        this.requestToken = "",
        this.idUser = 0,
    });

    late bool success;
    late String requestToken;
    late int idUser;

    factory ResponseAuthModel.fromJson(Map<String, dynamic> json) => ResponseAuthModel(
        success: json["success"],
        requestToken: json["request_token"],
        idUser: json["id_user"],
    );
}