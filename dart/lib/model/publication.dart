part of keyclic_sdk_api.api;

class Publication {
  Publication({
    this.links,
    this.createdAt,
    this.id,
    this.message,
    this.read,
    this.title,
    this.type,
  });

  Publication.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = PublicationLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    id = json['id'];
    message = json['message'];
    read = json['read'];
    title = json['title'];
    type = json['type'];
  }

  PublicationLinks links;

  DateTime createdAt;

  String id;

  String message;

  int read;

  String title;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Publication &&
        runtimeType == other.runtimeType &&
        message == other.message &&
        read == other.read &&
        title == other.title;
  }

  @override
  int get hashCode => 0 ^ message.hashCode ^ read.hashCode ^ title.hashCode;

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

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'id': id,
      'message': message,
      'read': read,
      'title': title,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Publication[links=$links, createdAt=$createdAt, id=$id, message=$message, read=$read, title=$title, type=$type, ]';
  }
}
