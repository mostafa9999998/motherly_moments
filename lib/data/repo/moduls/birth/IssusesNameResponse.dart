class IssusesNameResponse {
  IssusesNameResponse({
      this.id, 
      this.name,});

  IssusesNameResponse.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
  }
  IssusesNameResponse.fromJsonar(dynamic json) {
    id = json['id'];
    name = json['name_ar'];
  }
  int? id;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    return map;
  }
   Map<String, dynamic> toJsonar() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name_ar'] = name;
    return map;
  }

}