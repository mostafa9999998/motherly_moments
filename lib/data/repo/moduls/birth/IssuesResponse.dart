class IssuesResponse {
  IssuesResponse({
      this.id, 
      this.issueId, 
      this.title, 
      this.description,});

  IssuesResponse.fromJson(dynamic json) {
    id = json['id'];
    issueId = json['issue_id'];
    title = json['title'];
    description = json['description'];
  }
  IssuesResponse.fromJsonar(dynamic json) {
    id = json['id'];
    issueId = json['issue_id'];
    title = json['title_ar'];
    description = json['description_ar'];
  }
  int? id;
  int? issueId;
  String? title;
  String? description;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['issue_id'] = issueId;
    map['title'] = title;
    map['description'] = description;
    return map;
  }
  Map<String, dynamic> toJsonar() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['issue_id'] = issueId;
    map['title_ar'] = title;
    map['description_ar'] = description;
    return map;
  }

}