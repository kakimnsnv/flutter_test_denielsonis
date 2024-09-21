class User {
  String id;
  String name;
  String email;
  String password;
  String token;
  String imageURL;

  User({required this.id, required this.name, required this.email, required this.password, required this.token, required this.imageURL});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(id: json['id'], name: json['name'], email: json['email'], password: json['password'], token: json['token'], imageURL: json['imageURL']);
  }

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'email': email, 'password': password, 'token': token, 'imageURL': imageURL};
}
