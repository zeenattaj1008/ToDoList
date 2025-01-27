class Task {
  String? id;
  String? title;
  String? desc;
  DateTime? date;
  String? priority;
  bool? status;

  Task({
    this.title,
    this.desc,
    this.date,
    this.priority,
    this.status,
  });

  Task.withId({
    this.id,
    this.title,
    this.desc,
    this.date,
    this.priority,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    map['id'] = id;
    map['title'] = title;
    map['desc'] = desc;
    map['date'] = date!.toIso8601String();
    map['priority'] = priority;
    map['status'] = status;
    return map;
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task.withId(
      id: map['id'],
      title: map['title'],
      desc: map['desc'],
      date: DateTime.parse(map['date']),
      priority: map['priority'],
      status: map['status'],
    );
  }
}
