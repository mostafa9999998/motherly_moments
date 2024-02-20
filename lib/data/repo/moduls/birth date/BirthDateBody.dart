class BirthDateBody {
  BirthDateBody({
      this.birthday,});

  BirthDateBody.fromJson(dynamic json) {
    birthday = json['birthday'];
  }
  String? birthday;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['birthday'] = birthday;//.toIso8601String();
    return map;
  }

}