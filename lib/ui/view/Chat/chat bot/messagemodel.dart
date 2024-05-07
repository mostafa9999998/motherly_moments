class BotMessageResponse {
  BotMessageResponse({
    this.message,
    this.issender,
    this.createdAt,

  });

  BotMessageResponse.fromJson(dynamic json) {
    print(json);
    issender=json['issender'];
    message = json['message'];
    createdAt = json['created_at'];
  }
  String? message;
  bool? issender;
  int? createdAt;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['issender'] = issender;
    map['message'] = message;
    map['created_at'] = createdAt;
    return map;
  }

}


// class Messagebotmodel{
//   String? Message;
//   bool issender = false;
//   Messagebotmodel(this.Message,this.issender );
// }