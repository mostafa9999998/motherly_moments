class UpdateBody {
  UpdateBody({
      this.title, 
      this.content,});

  UpdateBody.fromJson(dynamic json) {
    title = json['title'];
    content = json['content'];
  }
  String? title;
  String? content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['content'] = content;
    return map;
  }

}