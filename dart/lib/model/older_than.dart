part of keyclic_sdk_api.api;

class OlderThan {
  OlderThan({
    this.content,
  });

  factory OlderThan.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OlderThan(
      content: json['content'],
    );
  }

  String content;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OlderThan &&
        runtimeType == other.runtimeType &&
        content == other.content;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= content?.hashCode ?? 0;

    return hashCode;
  }

  static List<OlderThan> listFromJson(List<dynamic> json) {
    return json == null
        ? <OlderThan>[]
        : json.map((dynamic value) => OlderThan.fromJson(value)).toList();
  }

  static Map<String, OlderThan> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OlderThan>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = OlderThan.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (content != null) 'content': content,
    };
  }

  @override
  String toString() {
    return 'OlderThan[content=$content, ]';
  }
}
