class Meeting {
  String id;
  String teamId;
  String topic;
  String date;
  String time;
  String leadId;

  Meeting({
    required this.id,
    required this.teamId,
    required this.topic,
    required this.date,
    required this.time,
    required this.leadId,
  });

  factory Meeting.fromJson(Map<String, dynamic> json) => Meeting(
    id: json['id'],
    teamId: json['teamId'],
    topic: json['topic'],
    date: json['date'],
    time: json['time'],
    leadId: json['leadId'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'teamId': teamId,
    'topic': topic,
    'date': date,
    'time': time,
    'leadId': leadId,
  };
}
