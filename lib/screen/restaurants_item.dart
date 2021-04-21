class RestaurantItem {
  String name;
  String type;
  int rating;
  int wallet;
  int cost;
  bool favorite;

  RestaurantItem({
      this.name, 
      this.type, 
      this.rating, 
      this.wallet, 
      this.cost, 
      this.favorite=false});

  RestaurantItem.fromJson(dynamic json) {
    name = json["name"];
    type = json["type"];
    rating = json["rating"];
    wallet = json["wallet"];
    cost = json["cost"];
    favorite = json["favorite"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["type"] = type;
    map["rating"] = rating;
    map["wallet"] = wallet;
    map["cost"] = cost;
    map["favorite"] = favorite;
    return map;
  }

}