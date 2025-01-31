class ErrorModel {
  ErrorModel({required this.errors});

  final List<ErrorSignIn> errors;

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
      errors: json["errors"] == null
          ? []
          : List<ErrorSignIn>.from(
              json["errors"]!.map((x) => ErrorSignIn.fromJson(x))),
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

class ErrorSignIn {
  ErrorSignIn({
    required this.code,
    required this.message,
  });

  final String? code;
  final String? message;

  factory ErrorSignIn.fromJson(Map<String, dynamic> json) {
    return ErrorSignIn(
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
