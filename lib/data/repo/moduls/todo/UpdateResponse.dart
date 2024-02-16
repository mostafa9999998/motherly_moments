class UpdateResponse {
  UpdateResponse({
      this.result,});

  UpdateResponse.fromJson(dynamic json) {
    result = json['Result'];
  }
  String? result;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Result'] = result;
    return map;
  }

}