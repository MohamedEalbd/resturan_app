import 'package:restaurant/core/apis/links/api_keys.dart';

class SignInModel {
  final String zoneWiseTopic;
  final String token;

  SignInModel({
    required this.zoneWiseTopic,
    required this.token,
  });
  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return SignInModel(
      zoneWiseTopic: json[ApiKeys.zoneWiseTopic],
      token: json[ApiKeys.token],
    );
  }

  @override
  String toString() {
    return "$token, $zoneWiseTopic, ";
  }
}
