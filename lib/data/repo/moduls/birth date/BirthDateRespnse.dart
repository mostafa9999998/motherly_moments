class BirthDateRespnse {
  BirthDateRespnse({
      this.years, 
      this.months, 
      this.days,});

  BirthDateRespnse.fromJson(dynamic json) {
    years = json['years'];
    months = json['months'];
    days = json['days'];
  }
  int? years;
  int? months;
  int? days;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['years'] = years;
    map['months'] = months;
    map['days'] = days;
    return map;
  }

}