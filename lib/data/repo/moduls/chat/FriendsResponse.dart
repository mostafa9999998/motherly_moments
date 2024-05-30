class FriendsResponse {
  FriendsResponse({
      this.userName, 
      this.userId, 
      this.friends,});

  FriendsResponse.fromJson(dynamic json) {
    userName = json['user_name'];
    userId = json['user_id'];
    if (json['friends'] != null) {
      friends = [];
      json['friends'].forEach((v) {
        friends?.add(Friends.fromJson(v));
      });
    }
  }
  String? userName;
  int? userId;
  List<Friends>? friends;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_name'] = userName;
    map['user_id'] = userId;
    if (friends != null) {
      map['friends'] = friends?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Friends {
  Friends({
      this.friendName, 
      this.friendId,});

  Friends.fromJson(dynamic json) {
    friendName = json['friend_name'];
    friendId = json['friend_id'];
  }
  String? friendName;
  int? friendId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['friend_name'] = friendName;
    map['friend_id'] = friendId;
    return map;
  }

}