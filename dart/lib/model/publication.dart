part of keyclic_sdk_api.api;

class Publication {
  Publication({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.message,
    this.read,
    this.title,
    this.type,
    this.updatedAt,
  });

  factory Publication.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Publication(
      embedded: PublicationEmbedded.fromJson(json['_embedded']),
      links: PublicationLinks.fromJson(json['_links']),
      createdAt: createdAt,
      id: json['id'],
      message: json['message'],
      read: json['read'],
      title: json['title'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  PublicationEmbedded embedded;

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
        embedded == other.embedded &&
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

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= message?.hashCode ?? 0;
    hashCode ^= read?.hashCode ?? 0;
    hashCode ^= title?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Publication> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => Publication.fromJson(value))
            ?.toList() ??
        <Publication>[];
  }

  static Map<String, Publication> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Publication>((String key, dynamic value) {
          return MapEntry(key, Publication.fromJson(value));
        }) ??
        <String, Publication>{};
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded?.toJson(),
      '_links': links?.toJson(),
      'createdAt': createdAt?.toUtc()?.toIso8601String(),
      'id': id,
      'message': message,
      'read': read,
      'title': title,
      'type': type,
      'updatedAt': updatedAt?.toUtc()?.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Publication[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, message=$message, read=$read, title=$title, type=$type, updatedAt=$updatedAt, ]';
  }
}
