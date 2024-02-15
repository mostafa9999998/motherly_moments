class TaskBody {
  TaskBody({
      this.title, 
      this.content, 
      this.userId,
      this.dueDate,});

  TaskBody.fromJson(dynamic json) {
    title = json['title'];
    content = json['content'];
    userId = json['user_id'];
    dueDate = json['due_date'];
  }
  String? title;
  String? content;
  String? userId;
  DateTime? dueDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['content'] = content;
    map['user_id'] = userId;
    map['due_date'] = dueDate?.toIso8601String();
    return map;
  }

}