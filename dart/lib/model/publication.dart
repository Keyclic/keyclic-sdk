part of keyclic_sdk_api.api;

class Publication {
  Publication({
    this.message,
    this.read,
    this.title,
    this.id,
    this.createdAt,
    this.type,
    this.links,
  });

  Publication.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    message = json['message'];
    read = json['read'];
    title = json['title'];
    id = json['id'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = PublicationLinks.fromJson(json['_links']);
  }

  String message;

  int read;

  String title;

  String id;

  DateTime createdAt;

  String type;

  PublicationLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Publication &&
        runtimeType == other.runtimeType &&
        message == other.message &&
        read == other.read &&
        title == other.title &&
        id == other.id &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode =>
      0 ^
      message.hashCode ^
      read.hashCode ^
      title.hashCode ^
      id.hashCode ^
      createdAt.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'read': read,
      'title': title,
      'id': id,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Publication[message=$message, read=$read, title=$title, id=$id, createdAt=$createdAt, type=$type, links=$links, ]';
  }

  static List<Publication> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Publication>()
        : json.map((value) => Publication.fromJson(value)).toList();
  }

  static Map<String, Publication> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Publication>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = Publication.fromJson(value));
    }
    return map;
  }
}
