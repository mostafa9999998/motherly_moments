class TaskResponse {
  TaskResponse({
      this.id, 
      this.title, 
      this.content, 
      this.userId, 
      this.due, 
      this.createdAt, 
      this.updatedAt,});

  TaskResponse.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    userId = json['user_id'];
    due = json['due'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? title;
  String? content;
  int? userId;
  String? due;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['content'] = content;
    map['user_id'] = userId;
    map['due'] = due;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}