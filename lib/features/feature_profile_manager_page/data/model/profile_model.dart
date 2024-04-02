import 'package:json_annotation/json_annotation.dart';

part 'profile_model.g.dart';
@JsonSerializable()
class ProfileModel {
  int? statusCode;
  String? message;
  Data? data;

  ProfileModel({this.statusCode, this.message, this.data});
  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
@JsonSerializable()
class Data {
  int? id;
  @JsonKey(name: "first_name")
  String? firstName;
  @JsonKey(name: "last_name")
  String? lastName;
  @JsonKey(name: "genderId")
  int? genderId;
  @JsonKey(name: "birth_date")
  String? birthDate;
  String? email;
  String? phone;
  String? password;
  String? fcmToken;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  @JsonKey(name: "user_status_id")
  int? userStatusId;
  @JsonKey(name: "user_profile_image")
  String? userProfileImage;
  bool? isPhoneVerified;
  Statuses? statuses;
  Statuses? genders;
  List<Carts>? carts;
  List<Orders>? orders;

  Data(
      {this.id,
        this.firstName,
        this.lastName,
        this.genderId,
        this.birthDate,
        this.email,
        this.phone,
        this.password,
        this.fcmToken,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.userStatusId,
        this.userProfileImage,
        this.isPhoneVerified,
        this.statuses,
        this.genders,
        this.carts,
        this.orders});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
@JsonSerializable()
class Statuses {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;

  Statuses({this.id, this.name, this.createdAt, this.updatedAt});
  factory Statuses.fromJson(Map<String, dynamic> json) => _$StatusesFromJson(json);

  Map<String, dynamic> toJson() => _$StatusesToJson(this);
}
@JsonSerializable()
class Carts {
  int? id;
  int? userId;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;

  Carts({this.id, this.userId, this.deletedAt, this.createdAt, this.updatedAt});
  factory Carts.fromJson(Map<String, dynamic> json) => _$CartsFromJson(json);

  Map<String, dynamic> toJson() => _$CartsToJson(this);
}
@JsonSerializable()
class Orders {
  int? id;
  String? orderType;
  String? orderDate;
  int? shippingAddressId;
  int? paymentMethodId;
  int? userId;
  double? shippingFees;
  double? totalPrice;
  double? slashCommision;
  String? shippingProvider;
  String? trackingNumber;
  String? estimatedDelivery;
  String? deliveredDate;
  String? sellerPickupDate;
  String? createdAt;
  String? updatedAt;
  int? orderStatusId;
  String? brandPickupAddressId;
  String? orderAwb;
  String? rateState;
  List<OrderDetails>? orderDetails;

  Orders(
      {this.id,
        this.orderType,
        this.orderDate,
        this.shippingAddressId,
        this.paymentMethodId,
        this.userId,
        this.shippingFees,
        this.totalPrice,
        this.slashCommision,
        this.shippingProvider,
        this.trackingNumber,
        this.estimatedDelivery,
        this.deliveredDate,
        this.sellerPickupDate,
        this.createdAt,
        this.updatedAt,
        this.orderStatusId,
        this.brandPickupAddressId,
        this.orderAwb,
        this.rateState,
        this.orderDetails});
  factory Orders.fromJson(Map<String, dynamic> json) => _$OrdersFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersToJson(this);
}
@JsonSerializable()
class OrderDetails {
  int? id;
  int? orderId;
  int? productVarientId;
  int? quantity;
  int? price;
  int? discount;
  int? productCommision;
  int? productStatusId;
  String? createdAt;
  String? updatedAt;
  int? brandId;
  ProductVariations? productVariations;
  List<String>? productRating;

  OrderDetails(
      {this.id,
        this.orderId,
        this.productVarientId,
        this.quantity,
        this.price,
        this.discount,
        this.productCommision,
        this.productStatusId,
        this.createdAt,
        this.updatedAt,
        this.brandId,
        this.productVariations,
        this.productRating});
  factory OrderDetails.fromJson(Map<String, dynamic> json) => _$OrderDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailsToJson(this);

}
@JsonSerializable()
class ProductVariations {
  int? id;
  int? productId;
  int? price;
  int? quantity;
  String? warehouseId;
  bool? isDefault;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  int? productVariationStatusId;
  String? acceptedBy;

  ProductVariations(
      {this.id,
        this.productId,
        this.price,
        this.quantity,
        this.warehouseId,
        this.isDefault,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.productVariationStatusId,
        this.acceptedBy});
  factory ProductVariations.fromJson(Map<String, dynamic> json) => _$ProductVariationsFromJson(json);

  Map<String, dynamic> toJson() => _$ProductVariationsToJson(this);

}
