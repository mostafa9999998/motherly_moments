class BabygrothResponse {
  int? id;
  int? categoryId;
  String? title;
  String? description;
  String? image;
  int? month;
  String? fullSrc;

  BabygrothResponse({
    this.id,
    this.categoryId,
    this.title,
    this.description,
    this.image,
    this.month,
    this.fullSrc,
  });

  BabygrothResponse.fromJson(dynamic json) {
    id = json['id'];
    categoryId = json['category_id'];
    title = json['title'];
    description = json['description'];
    image = json['image'];
    month = json['month'];
    fullSrc = json['FullSrc'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_id'] = categoryId;
    map['title'] = title;
    map['description'] = description;
    map['image'] = image;
    map['month'] = month;
    map['FullSrc'] = fullSrc;
    return map;
  }
}
