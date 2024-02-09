
class TodoModel {
  String? title;
  String? dec;
  String? id;

  TodoModel({this.title, this.dec, this.id});

  TodoModel.fromJson(Map<String, dynamic> json) {
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["dec"] is String) {
      dec = json["dec"];
    }
    if(json["id"] is String) {
      id = json["id"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["dec"] = dec;
    _data["id"] = id;
    return _data;
  }
}