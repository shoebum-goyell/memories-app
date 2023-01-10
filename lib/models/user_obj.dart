class UserObj {
  String uid;
  final String username;
  final String email;

  UserObj({
    this.uid = '',
    required this.username,
    required this.email
  });

  Map<String, dynamic> toJson() => {
    'uid': uid,
    'username': username,
    'email': email
  };

  static UserObj fromJson(Map<String, dynamic> json) => UserObj(
      uid: json['uid'],
      username: json['username'],
      email: json['email']
  );
}
