import 'UserContext.dart';

class LoginModel {
  LoginModel({
      this.uid, 
      this.userContext, 
      this.companyId, 
      this.companyIds, 
      this.partnerId, 
      this.userName, 
      this.partnerImg, 
      this.accessToken, 
      this.companyName, 
      this.country, 
      this.contactAddress,});

  LoginModel.fromJson(dynamic json) {
    uid = json['uid'];
    userContext = json['user_context'] != null ? UserContext.fromJson(json['user_context']) : null;
    companyId = json['company_id'];
    companyIds = json['company_ids'] != null ? json['company_ids'].cast<num>() : [];
    partnerId = json['partner_id'];
    userName = json['user_name'];
    partnerImg = json['partner_img'];
    accessToken = json['access_token'];
    companyName = json['company_name'];
    country = json['country'];
    contactAddress = json['contact_address'];
  }
  num? uid;
  UserContext? userContext;
  num? companyId;
  List<num>? companyIds;
  num? partnerId;
  String? userName;
  dynamic partnerImg;
  String? accessToken;
  String? companyName;
  String? country;
  String? contactAddress;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uid'] = uid;
    if (userContext != null) {
      map['user_context'] = userContext?.toJson();
    }
    map['company_id'] = companyId;
    map['company_ids'] = companyIds;
    map['partner_id'] = partnerId;
    map['user_name'] = userName;
    map['partner_img'] = partnerImg;
    map['access_token'] = accessToken;
    map['company_name'] = companyName;
    map['country'] = country;
    map['contact_address'] = contactAddress;
    return map;
  }

}