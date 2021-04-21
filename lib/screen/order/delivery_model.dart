class DeliveryModel {
  String title;
  String time;
  bool status;

  DeliveryModel({
      this.title, 
      this.time, 
      this.status});

  DeliveryModel.fromJson(dynamic json) {
    title = json["title"];
    time = json["time"];
    status = json["status"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["title"] = title;
    map["time"] = time;
    map["status"] = status;
    return map;
  }
}