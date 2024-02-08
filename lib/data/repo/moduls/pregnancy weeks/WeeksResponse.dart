class WeeksResponse {
  WeeksResponse({
      this.weeks, 
      this.days,});

  WeeksResponse.fromJson(dynamic json) {
    weeks = json['weeks'];
    days = json['days'];
  }
  int? weeks;
  int? days;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['weeks'] = weeks;
    map['days'] = days;
    return map;
  }

}