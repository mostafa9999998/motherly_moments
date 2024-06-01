class BrestFeedingResponse {
  BrestFeedingResponse({
      this.title, 
      this.description, 
      this.month, 
      this.fullSrc,});

  BrestFeedingResponse.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    month = json['month'];
    fullSrc = json['FullSrc'];
  }
   BrestFeedingResponse.fromJsonar(dynamic json) {
    title = json['title_ar'];
    description = json['description_ar'];
    month = json['month'];
    fullSrc = json['FullSrc'];
  }
  String? title;
  String? description;
  int? month;
  String? fullSrc;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['month'] = month;
    map['FullSrc'] = fullSrc;
    return map;
  }
  Map<String, dynamic> toJsonar() {
    final map = <String, dynamic>{};
    map['title_ar'] = title;
    map['description_ar'] = description;
    map['month'] = month;
    map['FullSrc'] = fullSrc;
    return map;
  }

}