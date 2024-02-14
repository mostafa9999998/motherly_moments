class ExerciseResponse {
  ExerciseResponse({
      this.id, 
      this.categoryId, 
      this.title, 
      this.description, 
      this.video,});

  ExerciseResponse.fromJson(dynamic json) {
    id = json['id'];
    categoryId = json['category_id'];
    title = json['title'];
    description = json['description'];
    video = json['video'];
  }
  int? id;
  int? categoryId;
  String? title;
  String? description;
  String? video;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['category_id'] = categoryId;
    map['title'] = title;
    map['description'] = description;
    map['video'] = video;
    return map;
  }

}