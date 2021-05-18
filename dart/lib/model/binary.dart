part of keyclic_sdk_api.api;

class Binary {
  Binary({
    this.content,
    this.contentType,
    this.name,
  });

  factory Binary.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Binary(
      content: json['content'],
      contentType: json['contentType'],
      name: json['name'],
    );
  }

  String content;

  String contentType;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Binary &&
        runtimeType == other.runtimeType &&
        content == other.content &&
        contentType == other.contentType &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= content?.hashCode ?? 0;
    hashCode ^= contentType?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<Binary> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Binary.fromJson(value))?.toList() ??
        <Binary>[];
  }

  static Map<String, Binary> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Binary>((String key, dynamic value) {
          return MapEntry(key, Binary.fromJson(value));
        }) ??
        <String, Binary>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
      'contentType': contentType,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'Binary[content=$content, contentType=$contentType, name=$name, ]';
  }
}
