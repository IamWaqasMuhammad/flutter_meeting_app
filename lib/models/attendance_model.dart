class Attendance {
  String id;
  String meetingId;
  String memberId;
  String status;

  Attendance({
    required this.id,
    required this.meetingId,
    required this.memberId,
    required this.status,
  });

  factory Attendance.fromJson(Map<String, dynamic> json) => Attendance(
    id: json['id'],
    meetingId: json['meetingId'],
    memberId: json['memberId'],
    status: json['status'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'meetingId': meetingId,
    'memberId': memberId,
    'status': status,
  };
}
