class SignUpModel {
    SignUpModel({
        required this.restaurantId,
        required this.type,
        required this.message,
    });

    final int? restaurantId;
    final String? type;
    final String? message;

    factory SignUpModel.fromJson(Map<String, dynamic> json){ 
        return SignUpModel(
            restaurantId: json["restaurant_id"],
            type: json["type"],
            message: json["message"],
        );
    }

    Map<String, dynamic> toJson() => {
        "restaurant_id": restaurantId,
        "type": type,
        "message": message,
    };

    @override
    String toString(){
        return "$restaurantId, $type, $message, ";
    }
}
