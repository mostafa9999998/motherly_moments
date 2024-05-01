class MessageResponse {
  MessageResponse({
      this.senderId, 
      this.receiverId, 
      this.message,
      this.createdAt, 
      });

  MessageResponse.fromJson(dynamic json) {
    print(json);
    senderId = json['sender_id'];
    receiverId = json['receiver_id'];
    message = json['message'];
    createdAt = json['created_at'];

  }
  String? senderId;
  String? receiverId;
  String? message;
  int? createdAt;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sender_id'] = senderId;
    map['receiver_id'] = receiverId;
    map['message'] = message;
    map['created_at'] = createdAt;
    return map;
  }

}