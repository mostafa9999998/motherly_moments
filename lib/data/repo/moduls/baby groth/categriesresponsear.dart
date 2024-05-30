class BabygrothResponsear {
  int? id;
  int? categoryId;
  String? title;
  String? description;
  String? image;
  int? month;
  String? fullSrc;

  BabygrothResponsear({
    this.id,
    this.categoryId,
    this.title,
    this.description,
    this.image,
    this.month,
    this.fullSrc,
  });

  BabygrothResponsear.fromJson(dynamic json) {
    id = json['id'];
    categoryId = json['category_id'];
    title = json['title_ar'];
    description = json['description_ar'];
    image = json['image'];
    month = json['month'];
    fullSrc = json['FullSrc'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_id'] = categoryId;
    map['title_ar'] = title;
    map['description_ar'] = description;
    map['image'] = image;
    map['month'] = month;
    map['FullSrc'] = fullSrc;
    return map;
  }
}


