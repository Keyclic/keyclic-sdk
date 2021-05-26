part of keyclic_sdk_api.api;

class Article {
  Article({
    this.links,
    this.createdAt,
    this.id,
    this.name,
    this.text,
    this.type,
    this.updatedAt,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
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

    return Article(
      links: ArticleLinks.fromJson(json['_links']),
      createdAt: createdAt,
      id: json['id'],
      name: json['name'],
      text: json['text'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  ArticleLinks links;

  DateTime createdAt;

  String id;

  String name;

  String text;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Article &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        id == other.id &&
        name == other.name &&
        text == other.text &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= text?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Article> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Article.fromJson(value))?.toList() ??
        <Article>[];
  }

  static Map<String, Article> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Article>((String key, dynamic value) {
          return MapEntry(key, Article.fromJson(value));
        }) ??
        <String, Article>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (text != null) 'text': text,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Article[links=$links, createdAt=$createdAt, id=$id, name=$name, text=$text, type=$type, updatedAt=$updatedAt, ]';
  }
}
