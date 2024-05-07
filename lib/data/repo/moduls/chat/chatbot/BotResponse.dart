class BotResponse {
  BotResponse({
      this.output,});

  BotResponse.fromJson(dynamic json) {
    output = json['output'];
  }
  String? output;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['output'] = output;
    return map;
  }

}