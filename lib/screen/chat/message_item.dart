class MessageItem {
  String message;
  String date;
  String time;
  bool isSelf;

  MessageItem({
      this.message, 
      this.date, 
      this.time, 
      this.isSelf});

  MessageItem.fromJson(dynamic json) {
    message = json["message"];
    date = json["date"];
    time = json["time"];
    isSelf = json["is_self"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["message"] = message;
    map["date"] = date;
    map["time"] = time;
    map["is_self"] = isSelf;
    return map;
  }

}