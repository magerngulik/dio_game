class Games {
  String? title;
  String? thumb;
  String? author;
  String? tag;
  String? time;
  String? desc;
  String? key;

  Games(
      {this.title,
      this.thumb,
      this.author,
      this.tag,
      this.time,
      this.desc,
      this.key});

  Games.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    thumb = json['thumb'];
    author = json['author'];
    tag = json['tag'];
    time = json['time'];
    desc = json['desc'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['thumb'] = thumb;
    data['author'] = author;
    data['tag'] = tag;
    data['time'] = time;
    data['desc'] = desc;
    data['key'] = key;
    return data;
  }
}
