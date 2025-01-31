class ErrorSignUpModel {
  ErrorSignUpModel({required this.errors});

  final List<ErrorSignUp> errors;

  factory ErrorSignUpModel.fromJson(Map<String, dynamic> json) {
    return ErrorSignUpModel(
      errors: json["errors"] == null
          ? []
          : List<ErrorSignUp>.from(json["errors"]!.map((x) => ErrorSignUp.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "errors": errors.map((x) => x.toJson()).toList(),
      };

  @override
  String toString() {
    return "$errors, ";
  }
}

class ErrorSignUp {
  ErrorSignUp({
    required this.code,
    required this.message,
  });

  final String? code;
  final String? message;

  factory ErrorSignUp.fromJson(Map<String, dynamic> json) {
    return ErrorSignUp(
      code: json["code"],
      message: json["message"],
    );
  }

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
      };

  @override
  String toString() {
    return "$code, $message, ";
  }
}

