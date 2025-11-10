class GetTodayActivitiesModel {
  bool? status;
  String? message;
  Data? data;

  GetTodayActivitiesModel({this.status, this.message, this.data});

  GetTodayActivitiesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? currentBalance;
  int? totalSpent;
  List<Activities>? activities;

  Data({this.currentBalance, this.totalSpent, this.activities});

  Data.fromJson(Map<String, dynamic> json) {
    currentBalance = json['currentBalance'];
    totalSpent = json['totalSpent'];
    if (json['activities'] != null) {
      activities = <Activities>[];
      json['activities'].forEach((v) {
        activities!.add(Activities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['currentBalance'] = currentBalance;
    data['totalSpent'] = totalSpent;
    if (activities != null) {
      data['activities'] = activities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Activities {
  String? sId;
  String? user;
  String? dailyActivity;
  String? type;
  int? price;
  String? time;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Activities({
    this.sId,
    this.user,
    this.dailyActivity,
    this.type,
    this.price,
    this.time,
    this.createdAt,
    this.updatedAt,
    this.iV,
  });

  Activities.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    user = json['user'];
    dailyActivity = json['dailyActivity'];
    type = json['type'];
    price = json['price'];
    time = json['time'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['user'] = user;
    data['dailyActivity'] = dailyActivity;
    data['type'] = type;
    data['price'] = price;
    data['time'] = time;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['__v'] = iV;
    return data;
  }
}
