
class TodoModels {
  String? title;
  String? dec;
  String? id;

  TodoModels({this.title, this.dec, this.id});

  TodoModels.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    dec = json["dec"];
    id = json["id"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["dec"] = dec;
    _data["id"] = id;
    return _data;
  }
}