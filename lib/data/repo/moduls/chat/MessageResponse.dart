class MessageResponse {
  MessageResponse({
      this.senderId, 
      this.receiverId, 
      this.message, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  MessageResponse.fromJson(dynamic json) {
    senderId = json['sender_id'];
    receiverId = json['receiver_id'];
    message = json['message'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  String? senderId;
  String? receiverId;
  String? message;
  String? updatedAt;
  String? createdAt;
  int? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['sender_id'] = senderId;
    map['receiver_id'] = receiverId;
    map['message'] = message;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }

}