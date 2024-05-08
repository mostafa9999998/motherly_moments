class DoctorsResponse {
  DoctorsResponse({
      this.name, 
      this.id, 
      this.image, 
      this.position, 
      this.fullSrc,});

  DoctorsResponse.fromJson(dynamic json) {
    name = json['name'];
    id = json['id'];
    image = json['image'];
    position = json['position'];
    fullSrc = json['FullSrc'];
  }
  String? name;
  int? id;
  String? image;
  String? position;
  String? fullSrc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['id'] = id;
    map['image'] = image;
    map['position'] = position;
    map['FullSrc'] = fullSrc;
    return map;
  }

}