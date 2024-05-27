class AddFriendBody {
  AddFriendBody({
      this.userId, 
      this.friendId,});

  AddFriendBody.fromJson(dynamic json) {
    userId = json['user_id'];
    friendId = json['friend_id'];
  }
  String? userId;
  String? friendId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_id'] = userId;
    map['friend_id'] = friendId;
    return map;
  }

}