class ProfileResponseModel {
    ProfileResponseModel({
        required this.id,
        required this.fName,
        required this.lName,
        required this.phone,
        required this.email,
        required this.emailVerifiedAt,
        required this.createdAt,
        required this.updatedAt,
        required this.bankName,
        required this.branch,
        required this.holderName,
        required this.accountNo,
        required this.image,
        required this.status,
        required this.firebaseToken,
        required this.fcmTokenWeb,
        required this.orderCount,
        required this.todaysOrderCount,
        required this.thisWeekOrderCount,
        required this.thisMonthOrderCount,
        required this.memberSinceDays,
        required this.cashInHands,
        required this.balance,
        required this.totalEarning,
        required this.todaysEarning,
        required this.thisWeekEarning,
        required this.thisMonthEarning,
        required this.payableBalance,
        required this.withdrawAbleBalance,
        required this.adjustAble,
        required this.reviewReplyStatus,
        required this.showPayNowButton,
        required this.pendingWithdraw,
        required this.totalWithdrawn,
        required this.dynamicBalance,
        required this.dynamicBalanceType,
        required this.overFlowWarning,
        required this.overFlowBlockWarning,
        required this.restaurants,
        required this.userinfo,
        required this.translations,
        required this.subscriptionTransactions,
        required this.imageFullUrl,
        required this.storage,
    });

    final int? id;
    final String? fName;
    final String? lName;
    final String? phone;
    final String? email;
    final dynamic emailVerifiedAt;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final String? bankName;
    final String? branch;
    final String? holderName;
    final String? accountNo;
    final dynamic image;
    final int? status;
    final dynamic firebaseToken;
    final dynamic fcmTokenWeb;
    final int? orderCount;
    final int? todaysOrderCount;
    final int? thisWeekOrderCount;
    final int? thisMonthOrderCount;
    final int? memberSinceDays;
    final int? cashInHands;
    final int? balance;
    final int? totalEarning;
    final int? todaysEarning;
    final int? thisWeekEarning;
    final int? thisMonthEarning;
    final int? payableBalance;
    final int? withdrawAbleBalance;
    final bool? adjustAble;
    final int? reviewReplyStatus;
    final bool? showPayNowButton;
    final int? pendingWithdraw;
    final int? totalWithdrawn;
    final int? dynamicBalance;
    final String? dynamicBalanceType;
    final bool? overFlowWarning;
    final bool? overFlowBlockWarning;
    final List<Restaurant> restaurants;
    final dynamic userinfo;
    final List<Translation> translations;
    final bool? subscriptionTransactions;
    final dynamic imageFullUrl;
    final List<dynamic> storage;

    factory ProfileResponseModel.fromJson(Map<String, dynamic> json){ 
        return ProfileResponseModel(
            id: json["id"],
            fName: json["f_name"],
            lName: json["l_name"],
            phone: json["phone"],
            email: json["email"],
            emailVerifiedAt: json["email_verified_at"],
            createdAt: DateTime.tryParse(json["created_at"] ?? ""),
            updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
            bankName: json["bank_name"],
            branch: json["branch"],
            holderName: json["holder_name"],
            accountNo: json["account_no"],
            image: json["image"],
            status: json["status"],
            firebaseToken: json["firebase_token"],
            fcmTokenWeb: json["fcm_token_web"],
            orderCount: json["order_count"],
            todaysOrderCount: json["todays_order_count"],
            thisWeekOrderCount: json["this_week_order_count"],
            thisMonthOrderCount: json["this_month_order_count"],
            memberSinceDays: json["member_since_days"],
            cashInHands: json["cash_in_hands"],
            balance: json["balance"],
            totalEarning: json["total_earning"],
            todaysEarning: json["todays_earning"],
            thisWeekEarning: json["this_week_earning"],
            thisMonthEarning: json["this_month_earning"],
            payableBalance: json["Payable_Balance"],
            withdrawAbleBalance: json["withdraw_able_balance"],
            adjustAble: json["adjust_able"],
            reviewReplyStatus: json["review_reply_status"],
            showPayNowButton: json["show_pay_now_button"],
            pendingWithdraw: json["pending_withdraw"],
            totalWithdrawn: json["total_withdrawn"],
            dynamicBalance: json["dynamic_balance"],
            dynamicBalanceType: json["dynamic_balance_type"],
            overFlowWarning: json["over_flow_warning"],
            overFlowBlockWarning: json["over_flow_block_warning"],
            restaurants: json["restaurants"] == null ? [] : List<Restaurant>.from(json["restaurants"]!.map((x) => Restaurant.fromJson(x))),
            userinfo: json["userinfo"],
            translations: json["translations"] == null ? [] : List<Translation>.from(json["translations"]!.map((x) => Translation.fromJson(x))),
            subscriptionTransactions: json["subscription_transactions"],
            imageFullUrl: json["image_full_url"],
            storage: json["storage"] == null ? [] : List<dynamic>.from(json["storage"]!.map((x) => x)),
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "f_name": fName,
        "l_name": lName,
        "phone": phone,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "bank_name": bankName,
        "branch": branch,
        "holder_name": holderName,
        "account_no": accountNo,
        "image": image,
        "status": status,
        "firebase_token": firebaseToken,
        "fcm_token_web": fcmTokenWeb,
        "order_count": orderCount,
        "todays_order_count": todaysOrderCount,
        "this_week_order_count": thisWeekOrderCount,
        "this_month_order_count": thisMonthOrderCount,
        "member_since_days": memberSinceDays,
        "cash_in_hands": cashInHands,
        "balance": balance,
        "total_earning": totalEarning,
        "todays_earning": todaysEarning,
        "this_week_earning": thisWeekEarning,
        "this_month_earning": thisMonthEarning,
        "Payable_Balance": payableBalance,
        "withdraw_able_balance": withdrawAbleBalance,
        "adjust_able": adjustAble,
        "review_reply_status": reviewReplyStatus,
        "show_pay_now_button": showPayNowButton,
        "pending_withdraw": pendingWithdraw,
        "total_withdrawn": totalWithdrawn,
        "dynamic_balance": dynamicBalance,
        "dynamic_balance_type": dynamicBalanceType,
        "over_flow_warning": overFlowWarning,
        "over_flow_block_warning": overFlowBlockWarning,
        "restaurants": restaurants.map((x) => x?.toJson()).toList(),
        "userinfo": userinfo,
        "translations": translations.map((x) => x?.toJson()).toList(),
        "subscription_transactions": subscriptionTransactions,
        "image_full_url": imageFullUrl,
        "storage": storage.map((x) => x).toList(),
    };

    @override
    String toString(){
        return "$id, $fName, $lName, $phone, $email, $emailVerifiedAt, $createdAt, $updatedAt, $bankName, $branch, $holderName, $accountNo, $image, $status, $firebaseToken, $fcmTokenWeb, $orderCount, $todaysOrderCount, $thisWeekOrderCount, $thisMonthOrderCount, $memberSinceDays, $cashInHands, $balance, $totalEarning, $todaysEarning, $thisWeekEarning, $thisMonthEarning, $payableBalance, $withdrawAbleBalance, $adjustAble, $reviewReplyStatus, $showPayNowButton, $pendingWithdraw, $totalWithdrawn, $dynamicBalance, $dynamicBalanceType, $overFlowWarning, $overFlowBlockWarning, $restaurants, $userinfo, $translations, $subscriptionTransactions, $imageFullUrl, $storage, ";
    }
}

class Restaurant {
    Restaurant({
        required this.id,
        required this.name,
        required this.phone,
        required this.email,
        required this.logo,
        required this.latitude,
        required this.longitude,
        required this.address,
        required this.footerText,
        required this.minimumOrder,
        required this.comission,
        required this.scheduleOrder,
        required this.openingTime,
        required this.closeingTime,
        required this.status,
        required this.vendorId,
        required this.createdAt,
        required this.updatedAt,
        required this.freeDelivery,
        required this.coverPhoto,
        required this.delivery,
        required this.takeAway,
        required this.foodSection,
        required this.tax,
        required this.zoneId,
        required this.reviewsSection,
        required this.active,
        required this.offDay,
        required this.selfDeliverySystem,
        required this.posSystem,
        required this.minimumShippingCharge,
        required this.deliveryTime,
        required this.veg,
        required this.nonVeg,
        required this.orderCount,
        required this.totalOrder,
        required this.perKmShippingCharge,
        required this.restaurantModel,
        required this.maximumShippingCharge,
        required this.slug,
        required this.orderSubscriptionActive,
        required this.cutlery,
        required this.metaTitle,
        required this.metaDescription,
        required this.metaImage,
        required this.announcement,
        required this.announcementMessage,
        required this.qrCode,
        required this.additionalData,
        required this.additionalDocuments,
        required this.packageId,
        required this.restaurantStatus,
        required this.foods,
        required this.coupons,
        required this.cuisine,
        required this.ratings,
        required this.avgRating,
        required this.ratingCount,
        required this.positiveRating,
        required this.customerOrderDate,
        required this.customerDateOrderSratus,
        required this.instantOrder,
        required this.halalTagStatus,
        required this.isExtraPackagingActive,
        required this.extraPackagingStatus,
        required this.extraPackagingAmount,
        required this.deliveryFee,
        required this.currentOpeningTime,
        required this.characteristics,
        required this.discount,
        required this.schedules,
        required this.gstStatus,
        required this.gstCode,
        required this.freeDeliveryDistanceStatus,
        required this.freeDeliveryDistanceValue,
        required this.logoFullUrl,
        required this.coverPhotoFullUrl,
        required this.metaImageFullUrl,
        required this.translations,
        required this.storage,
    });

    final int? id;
    final String? name;
    final String? phone;
    final String? email;
    final String? logo;
    final String? latitude;
    final String? longitude;
    final String? address;
    final dynamic footerText;
    final int? minimumOrder;
    final dynamic comission;
    final bool? scheduleOrder;
    final dynamic openingTime;
    final dynamic closeingTime;
    final int? status;
    final int? vendorId;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final bool? freeDelivery;
    final String? coverPhoto;
    final bool? delivery;
    final bool? takeAway;
    final bool? foodSection;
    final int? tax;
    final int? zoneId;
    final bool? reviewsSection;
    final bool? active;
    final String? offDay;
    final int? selfDeliverySystem;
    final bool? posSystem;
    final int? minimumShippingCharge;
    final String? deliveryTime;
    final int? veg;
    final int? nonVeg;
    final int? orderCount;
    final int? totalOrder;
    final dynamic perKmShippingCharge;
    final String? restaurantModel;
    final dynamic maximumShippingCharge;
    final String? slug;
    final bool? orderSubscriptionActive;
    final bool? cutlery;
    final dynamic metaTitle;
    final dynamic metaDescription;
    final dynamic metaImage;
    final int? announcement;
    final String? announcementMessage;
    final dynamic qrCode;
    final dynamic additionalData;
    final dynamic additionalDocuments;
    final dynamic packageId;
    final int? restaurantStatus;
    final List<dynamic> foods;
    final List<dynamic> coupons;
    final List<dynamic> cuisine;
    final List<int> ratings;
    final int? avgRating;
    final int? ratingCount;
    final int? positiveRating;
    final int? customerOrderDate;
    final bool? customerDateOrderSratus;
    final bool? instantOrder;
    final bool? halalTagStatus;
    final bool? isExtraPackagingActive;
    final bool? extraPackagingStatus;
    final int? extraPackagingAmount;
    final String? deliveryFee;
    final String? currentOpeningTime;
    final List<dynamic> characteristics;
    final dynamic discount;
    final List<Schedule> schedules;
    final bool? gstStatus;
    final String? gstCode;
    final bool? freeDeliveryDistanceStatus;
    final String? freeDeliveryDistanceValue;
    final dynamic logoFullUrl;
    final dynamic coverPhotoFullUrl;
    final dynamic metaImageFullUrl;
    final List<dynamic> translations;
    final List<Storage> storage;

    factory Restaurant.fromJson(Map<String, dynamic> json){ 
        return Restaurant(
            id: json["id"],
            name: json["name"],
            phone: json["phone"],
            email: json["email"],
            logo: json["logo"],
            latitude: json["latitude"],
            longitude: json["longitude"],
            address: json["address"],
            footerText: json["footer_text"],
            minimumOrder: json["minimum_order"],
            comission: json["comission"],
            scheduleOrder: json["schedule_order"],
            openingTime: json["opening_time"],
            closeingTime: json["closeing_time"],
            status: json["status"],
            vendorId: json["vendor_id"],
            createdAt: DateTime.tryParse(json["created_at"] ?? ""),
            updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
            freeDelivery: json["free_delivery"],
            coverPhoto: json["cover_photo"],
            delivery: json["delivery"],
            takeAway: json["take_away"],
            foodSection: json["food_section"],
            tax: json["tax"],
            zoneId: json["zone_id"],
            reviewsSection: json["reviews_section"],
            active: json["active"],
            offDay: json["off_day"],
            selfDeliverySystem: json["self_delivery_system"],
            posSystem: json["pos_system"],
            minimumShippingCharge: json["minimum_shipping_charge"],
            deliveryTime: json["delivery_time"],
            veg: json["veg"],
            nonVeg: json["non_veg"],
            orderCount: json["order_count"],
            totalOrder: json["total_order"],
            perKmShippingCharge: json["per_km_shipping_charge"],
            restaurantModel: json["restaurant_model"],
            maximumShippingCharge: json["maximum_shipping_charge"],
            slug: json["slug"],
            orderSubscriptionActive: json["order_subscription_active"],
            cutlery: json["cutlery"],
            metaTitle: json["meta_title"],
            metaDescription: json["meta_description"],
            metaImage: json["meta_image"],
            announcement: json["announcement"],
            announcementMessage: json["announcement_message"],
            qrCode: json["qr_code"],
            additionalData: json["additional_data"],
            additionalDocuments: json["additional_documents"],
            packageId: json["package_id"],
            restaurantStatus: json["restaurant_status"],
            foods: json["foods"] == null ? [] : List<dynamic>.from(json["foods"]!.map((x) => x)),
            coupons: json["coupons"] == null ? [] : List<dynamic>.from(json["coupons"]!.map((x) => x)),
            cuisine: json["cuisine"] == null ? [] : List<dynamic>.from(json["cuisine"]!.map((x) => x)),
            ratings: json["ratings"] == null ? [] : List<int>.from(json["ratings"]!.map((x) => x)),
            avgRating: json["avg_rating"],
            ratingCount: json["rating_count"],
            positiveRating: json["positive_rating"],
            customerOrderDate: json["customer_order_date"],
            customerDateOrderSratus: json["customer_date_order_sratus"],
            instantOrder: json["instant_order"],
            halalTagStatus: json["halal_tag_status"],
            isExtraPackagingActive: json["is_extra_packaging_active"],
            extraPackagingStatus: json["extra_packaging_status"],
            extraPackagingAmount: json["extra_packaging_amount"],
            deliveryFee: json["delivery_fee"],
            currentOpeningTime: json["current_opening_time"],
            characteristics: json["characteristics"] == null ? [] : List<dynamic>.from(json["characteristics"]!.map((x) => x)),
            discount: json["discount"],
            schedules: json["schedules"] == null ? [] : List<Schedule>.from(json["schedules"]!.map((x) => Schedule.fromJson(x))),
            gstStatus: json["gst_status"],
            gstCode: json["gst_code"],
            freeDeliveryDistanceStatus: json["free_delivery_distance_status"],
            freeDeliveryDistanceValue: json["free_delivery_distance_value"],
            logoFullUrl: json["logo_full_url"],
            coverPhotoFullUrl: json["cover_photo_full_url"],
            metaImageFullUrl: json["meta_image_full_url"],
            translations: json["translations"] == null ? [] : List<dynamic>.from(json["translations"]!.map((x) => x)),
            storage: json["storage"] == null ? [] : List<Storage>.from(json["storage"]!.map((x) => Storage.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "logo": logo,
        "latitude": latitude,
        "longitude": longitude,
        "address": address,
        "footer_text": footerText,
        "minimum_order": minimumOrder,
        "comission": comission,
        "schedule_order": scheduleOrder,
        "opening_time": openingTime,
        "closeing_time": closeingTime,
        "status": status,
        "vendor_id": vendorId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "free_delivery": freeDelivery,
        "cover_photo": coverPhoto,
        "delivery": delivery,
        "take_away": takeAway,
        "food_section": foodSection,
        "tax": tax,
        "zone_id": zoneId,
        "reviews_section": reviewsSection,
        "active": active,
        "off_day": offDay,
        "self_delivery_system": selfDeliverySystem,
        "pos_system": posSystem,
        "minimum_shipping_charge": minimumShippingCharge,
        "delivery_time": deliveryTime,
        "veg": veg,
        "non_veg": nonVeg,
        "order_count": orderCount,
        "total_order": totalOrder,
        "per_km_shipping_charge": perKmShippingCharge,
        "restaurant_model": restaurantModel,
        "maximum_shipping_charge": maximumShippingCharge,
        "slug": slug,
        "order_subscription_active": orderSubscriptionActive,
        "cutlery": cutlery,
        "meta_title": metaTitle,
        "meta_description": metaDescription,
        "meta_image": metaImage,
        "announcement": announcement,
        "announcement_message": announcementMessage,
        "qr_code": qrCode,
        "additional_data": additionalData,
        "additional_documents": additionalDocuments,
        "package_id": packageId,
        "restaurant_status": restaurantStatus,
        "foods": foods.map((x) => x).toList(),
        "coupons": coupons.map((x) => x).toList(),
        "cuisine": cuisine.map((x) => x).toList(),
        "ratings": ratings.map((x) => x).toList(),
        "avg_rating": avgRating,
        "rating_count": ratingCount,
        "positive_rating": positiveRating,
        "customer_order_date": customerOrderDate,
        "customer_date_order_sratus": customerDateOrderSratus,
        "instant_order": instantOrder,
        "halal_tag_status": halalTagStatus,
        "is_extra_packaging_active": isExtraPackagingActive,
        "extra_packaging_status": extraPackagingStatus,
        "extra_packaging_amount": extraPackagingAmount,
        "delivery_fee": deliveryFee,
        "current_opening_time": currentOpeningTime,
        "characteristics": characteristics.map((x) => x).toList(),
        "discount": discount,
        "schedules": schedules.map((x) => x?.toJson()).toList(),
        "gst_status": gstStatus,
        "gst_code": gstCode,
        "free_delivery_distance_status": freeDeliveryDistanceStatus,
        "free_delivery_distance_value": freeDeliveryDistanceValue,
        "logo_full_url": logoFullUrl,
        "cover_photo_full_url": coverPhotoFullUrl,
        "meta_image_full_url": metaImageFullUrl,
        "translations": translations.map((x) => x).toList(),
        "storage": storage.map((x) => x?.toJson()).toList(),
    };

    @override
    String toString(){
        return "$id, $name, $phone, $email, $logo, $latitude, $longitude, $address, $footerText, $minimumOrder, $comission, $scheduleOrder, $openingTime, $closeingTime, $status, $vendorId, $createdAt, $updatedAt, $freeDelivery, $coverPhoto, $delivery, $takeAway, $foodSection, $tax, $zoneId, $reviewsSection, $active, $offDay, $selfDeliverySystem, $posSystem, $minimumShippingCharge, $deliveryTime, $veg, $nonVeg, $orderCount, $totalOrder, $perKmShippingCharge, $restaurantModel, $maximumShippingCharge, $slug, $orderSubscriptionActive, $cutlery, $metaTitle, $metaDescription, $metaImage, $announcement, $announcementMessage, $qrCode, $additionalData, $additionalDocuments, $packageId, $restaurantStatus, $foods, $coupons, $cuisine, $ratings, $avgRating, $ratingCount, $positiveRating, $customerOrderDate, $customerDateOrderSratus, $instantOrder, $halalTagStatus, $isExtraPackagingActive, $extraPackagingStatus, $extraPackagingAmount, $deliveryFee, $currentOpeningTime, $characteristics, $discount, $schedules, $gstStatus, $gstCode, $freeDeliveryDistanceStatus, $freeDeliveryDistanceValue, $logoFullUrl, $coverPhotoFullUrl, $metaImageFullUrl, $translations, $storage, ";
    }
}

class Schedule {
    Schedule({
        required this.id,
        required this.restaurantId,
        required this.day,
        required this.openingTime,
        required this.closingTime,
        required this.createdAt,
        required this.updatedAt,
    });

    final int? id;
    final int? restaurantId;
    final int? day;
    final String? openingTime;
    final String? closingTime;
    final dynamic createdAt;
    final dynamic updatedAt;

    factory Schedule.fromJson(Map<String, dynamic> json){ 
        return Schedule(
            id: json["id"],
            restaurantId: json["restaurant_id"],
            day: json["day"],
            openingTime: json["opening_time"],
            closingTime: json["closing_time"],
            createdAt: json["created_at"],
            updatedAt: json["updated_at"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "restaurant_id": restaurantId,
        "day": day,
        "opening_time": openingTime,
        "closing_time": closingTime,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };

    @override
    String toString(){
        return "$id, $restaurantId, $day, $openingTime, $closingTime, $createdAt, $updatedAt, ";
    }
}

class Storage {
    Storage({
        required this.id,
        required this.dataType,
        required this.dataId,
        required this.key,
        required this.value,
        required this.createdAt,
        required this.updatedAt,
    });

    final int? id;
    final String? dataType;
    final String? dataId;
    final String? key;
    final String? value;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    factory Storage.fromJson(Map<String, dynamic> json){ 
        return Storage(
            id: json["id"],
            dataType: json["data_type"],
            dataId: json["data_id"],
            key: json["key"],
            value: json["value"],
            createdAt: DateTime.tryParse(json["created_at"] ?? ""),
            updatedAt: DateTime.tryParse(json["updated_at"] ?? ""),
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "data_type": dataType,
        "data_id": dataId,
        "key": key,
        "value": value,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };

    @override
    String toString(){
        return "$id, $dataType, $dataId, $key, $value, $createdAt, $updatedAt, ";
    }
}

class Translation {
    Translation({
        required this.id,
        required this.translationableType,
        required this.translationableId,
        required this.locale,
        required this.key,
        required this.value,
        required this.createdAt,
        required this.updatedAt,
    });

    final int? id;
    final String? translationableType;
    final int? translationableId;
    final String? locale;
    final dynamic key;
    final String? value;
    final dynamic createdAt;
    final dynamic updatedAt;

    factory Translation.fromJson(Map<String, dynamic> json){ 
        return Translation(
            id: json["id"],
            translationableType: json["translationable_type"],
            translationableId: json["translationable_id"],
            locale: json["locale"],
            key: json["key"],
            value: json["value"],
            createdAt: json["created_at"],
            updatedAt: json["updated_at"],
        );
    }

    Map<String, dynamic> toJson() => {
        "id": id,
        "translationable_type": translationableType,
        "translationable_id": translationableId,
        "locale": locale,
        "key": key,
        "value": value,
        "created_at": createdAt,
        "updated_at": updatedAt,
    };

    @override
    String toString(){
        return "$id, $translationableType, $translationableId, $locale, $key, $value, $createdAt, $updatedAt, ";
    }
}
