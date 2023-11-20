import 'package:shoes_app/model/product_model.dart';

class MessageModel {
  String? message;
  int? userId;
  String? username;
  String? userImage;
  bool? isFromUser;
  ProductModel? product;
  DateTime? createdAt;
  DateTime? updatedAt;

  MessageModel({
    this.message,
    this.userId,
    this.username,
    this.userImage,
    this.isFromUser,
    this.product,
    this.createdAt,
    this.updatedAt,
  });

  MessageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userId = json['userId'];
    username = json['username'];
    userImage = json['userImage'];
    isFromUser = json['isFromUser'];
    product = json['product'].isEmpty
        ? UninitializedProductModel()
        : ProductModel.fromJson(json['product']);
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['updatedAt']);
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'userId': userId,
      'username': username,
      'userImage': userImage,
      'isFromUser': isFromUser,
      'product': product is UninitializedProductModel ? {} : product!.toJson(),
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
