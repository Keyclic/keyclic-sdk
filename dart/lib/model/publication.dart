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
    this.updatedAt,
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
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  PublicationLinks links;

  DateTime createdAt;

  String id;

  String message;

  int read;

  String title;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Publication &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        id == other.id &&
        message == other.message &&
        read == other.read &&
        title == other.title &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (links?.hashCode ?? 0);
    hashCode ^= (createdAt?.hashCode ?? 0);
    hashCode ^= (id?.hashCode ?? 0);
    hashCode ^= (message?.hashCode ?? 0);
    hashCode ^= (read?.hashCode ?? 0);
    hashCode ^= (title?.hashCode ?? 0);
    hashCode ^= (type?.hashCode ?? 0);
    hashCode ^= (updatedAt?.hashCode ?? 0);

    return hashCode;
  }

  static List<Publication> listFromJson(List<dynamic> json) {
    return json == null
        ? <Publication>[]
        : json.map((dynamic value) => Publication.fromJson(value)).toList();
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
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Publication[links=$links, createdAt=$createdAt, id=$id, message=$message, read=$read, title=$title, type=$type, updatedAt=$updatedAt, ]';
  }
}
