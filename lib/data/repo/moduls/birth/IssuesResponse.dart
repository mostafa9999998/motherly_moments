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

}