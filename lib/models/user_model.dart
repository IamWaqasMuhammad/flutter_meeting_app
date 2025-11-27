class User {
  String id;
  String name;
  String role;
  String chapterId;

  User({
    required this.id,
    required this.name,
    required this.role,
    required this.chapterId,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json['id'],
    name: json['name'],
    role: json['role'],
    chapterId: json['chapterId'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'role': role,
    'chapterId': chapterId,
  };
}
