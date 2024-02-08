class RegisterBody {
  RegisterBody({
      this.name, 
      this.email, 
      this.phone, 
      this.password,});

  RegisterBody.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
  }
  String? name;
  String? email;
  String? phone;
  String? password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['password'] = password;
    return map;
  }

}