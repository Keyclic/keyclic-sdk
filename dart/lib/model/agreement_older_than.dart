part of keyclic_sdk_api.api;

class AgreementOlderThan {
  AgreementOlderThan({
    this.content,
  });

  factory AgreementOlderThan.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AgreementOlderThan(
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

    return other is AgreementOlderThan &&
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

  static List<AgreementOlderThan> listFromJson(List<dynamic> json) {
    return json == null
        ? <AgreementOlderThan>[]
        : json
            .map((dynamic value) => AgreementOlderThan.fromJson(value))
            .toList();
  }

  static Map<String, AgreementOlderThan> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, AgreementOlderThan>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = AgreementOlderThan.fromJson(value));
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
    return 'AgreementOlderThan[content=$content, ]';
  }
}
