//classes
class Reminder {
  int id;
  String name;
  String details;
  int save;

  get getId => this.id;

  set setId(id) => this.id = id;

  get getName => this.name;

  set setName(name) => this.name = name;

  get getDetails => this.details;

  set setDetails(details) => this.details = details;

  get getSave => this.save;

  set setSave(save) => this.save = save;

  Reminder(
      {this.id = 0,
      required this.name,
      required this.details,
      required this.save});

  factory Reminder.fromMap(Map<String, dynamic> json) => Reminder(
      id: json["id"],
      name: json["name"],
      details: json["details"],
      save: json["false"]);

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "details": details,
        "save": save,
      };
}
