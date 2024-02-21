class TipsResponse {
  TipsResponse({
      this.title, 
      this.description, 
      this.month, 
      this.image, 
      this.fullSrc,});

  TipsResponse.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    month = json['month'];
    image = json['image'];
    fullSrc = json['FullSrc'];
  }
  String? title;
  String? description;
  int? month;
  String? image;
  String? fullSrc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['month'] = month;
    map['image'] = image;
    map['FullSrc'] = fullSrc;
    return map;
  }

}