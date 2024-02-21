class ChildGrothResponse {
  ChildGrothResponse({
      this.title, 
      this.description, 
      this.month, 
      this.fullSrc,});

  ChildGrothResponse.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
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

}