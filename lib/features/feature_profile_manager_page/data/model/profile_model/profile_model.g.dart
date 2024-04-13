// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      genderId: json['genderId'] as int?,
      birthDate: json['birth_date'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      fcmToken: json['fcmToken'] as String?,
      deletedAt: json['deletedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      userStatusId: json['user_status_id'] as int?,
      userProfileImage: json['user_profile_image'] as String?,
      isPhoneVerified: json['isPhoneVerified'] as bool?,
      statuses: json['statuses'] == null
          ? null
          : Statuses.fromJson(json['statuses'] as Map<String, dynamic>),
      genders: json['genders'] == null
          ? null
          : Statuses.fromJson(json['genders'] as Map<String, dynamic>),
      carts: (json['carts'] as List<dynamic>?)
          ?.map((e) => Carts.fromJson(e as Map<String, dynamic>))
          .toList(),
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Orders.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'genderId': instance.genderId,
      'birth_date': instance.birthDate,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'fcmToken': instance.fcmToken,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'user_status_id': instance.userStatusId,
      'user_profile_image': instance.userProfileImage,
      'isPhoneVerified': instance.isPhoneVerified,
      'statuses': instance.statuses,
      'genders': instance.genders,
      'carts': instance.carts,
      'orders': instance.orders,
    };

Statuses _$StatusesFromJson(Map<String, dynamic> json) => Statuses(
      id: json['id'] as int?,
      name: json['name'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$StatusesToJson(Statuses instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

Carts _$CartsFromJson(Map<String, dynamic> json) => Carts(
      id: json['id'] as int?,
      userId: json['userId'] as int?,
      deletedAt: json['deletedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$CartsToJson(Carts instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

Orders _$OrdersFromJson(Map<String, dynamic> json) => Orders(
      id: json['id'] as int?,
      orderType: json['orderType'] as String?,
      orderDate: json['orderDate'] as String?,
      shippingAddressId: json['shippingAddressId'] as int?,
      paymentMethodId: json['paymentMethodId'] as int?,
      userId: json['userId'] as int?,
      shippingFees: (json['shippingFees'] as num?)?.toDouble(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
      slashCommision: (json['slashCommision'] as num?)?.toDouble(),
      shippingProvider: json['shippingProvider'] as String?,
      trackingNumber: json['trackingNumber'] as String?,
      estimatedDelivery: json['estimatedDelivery'] as String?,
      deliveredDate: json['deliveredDate'] as String?,
      sellerPickupDate: json['sellerPickupDate'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      orderStatusId: json['orderStatusId'] as int?,
      brandPickupAddressId: json['brandPickupAddressId'] as String?,
      orderAwb: json['orderAwb'] as String?,
      rateState: json['rateState'] as String?,
      orderDetails: (json['orderDetails'] as List<dynamic>?)
          ?.map((e) => OrderDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrdersToJson(Orders instance) => <String, dynamic>{
      'id': instance.id,
      'orderType': instance.orderType,
      'orderDate': instance.orderDate,
      'shippingAddressId': instance.shippingAddressId,
      'paymentMethodId': instance.paymentMethodId,
      'userId': instance.userId,
      'shippingFees': instance.shippingFees,
      'totalPrice': instance.totalPrice,
      'slashCommision': instance.slashCommision,
      'shippingProvider': instance.shippingProvider,
      'trackingNumber': instance.trackingNumber,
      'estimatedDelivery': instance.estimatedDelivery,
      'deliveredDate': instance.deliveredDate,
      'sellerPickupDate': instance.sellerPickupDate,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'orderStatusId': instance.orderStatusId,
      'brandPickupAddressId': instance.brandPickupAddressId,
      'orderAwb': instance.orderAwb,
      'rateState': instance.rateState,
      'orderDetails': instance.orderDetails,
    };

OrderDetails _$OrderDetailsFromJson(Map<String, dynamic> json) => OrderDetails(
      id: json['id'] as int?,
      orderId: json['orderId'] as int?,
      productVarientId: json['productVarientId'] as int?,
      quantity: json['quantity'] as int?,
      price: json['price'] as int?,
      discount: json['discount'] as int?,
      productCommision: json['productCommision'] as int?,
      productStatusId: json['productStatusId'] as int?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      brandId: json['brandId'] as int?,
      productVariations: json['productVariations'] == null
          ? null
          : ProductVariations.fromJson(
              json['productVariations'] as Map<String, dynamic>),
      productRating: (json['productRating'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$OrderDetailsToJson(OrderDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderId': instance.orderId,
      'productVarientId': instance.productVarientId,
      'quantity': instance.quantity,
      'price': instance.price,
      'discount': instance.discount,
      'productCommision': instance.productCommision,
      'productStatusId': instance.productStatusId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'brandId': instance.brandId,
      'productVariations': instance.productVariations,
      'productRating': instance.productRating,
    };

ProductVariations _$ProductVariationsFromJson(Map<String, dynamic> json) =>
    ProductVariations(
      id: json['id'] as int?,
      productId: json['productId'] as int?,
      price: json['price'] as int?,
      quantity: json['quantity'] as int?,
      warehouseId: json['warehouseId'] as String?,
      isDefault: json['isDefault'] as bool?,
      deletedAt: json['deletedAt'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      productVariationStatusId: json['productVariationStatusId'] as int?,
      acceptedBy: json['acceptedBy'] as String?,
    );

Map<String, dynamic> _$ProductVariationsToJson(ProductVariations instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'price': instance.price,
      'quantity': instance.quantity,
      'warehouseId': instance.warehouseId,
      'isDefault': instance.isDefault,
      'deletedAt': instance.deletedAt,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'productVariationStatusId': instance.productVariationStatusId,
      'acceptedBy': instance.acceptedBy,
    };
