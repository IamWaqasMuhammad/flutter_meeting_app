class Team {
  String id;
  String chapterId;
  String name;
  String leadId;
  List<String> members;

  Team({
    required this.id,
    required this.chapterId,
    required this.name,
    required this.leadId,
    required this.members,
  });

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    id: json['id'],
    chapterId: json['chapterId'],
    name: json['name'],
    leadId: json['leadId'],
    members: List<String>.from(json['members'] ?? []),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'chapterId': chapterId,
    'name': name,
    'leadId': leadId,
    'members': members,
  };
}
