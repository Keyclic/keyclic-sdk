part of keyclic_sdk_api.api;

class PrivacyPolicy {
  PrivacyPolicy({
    this.content,
  });

  factory PrivacyPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PrivacyPolicy(
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

    return other is PrivacyPolicy &&
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

  static List<PrivacyPolicy> listFromJson(List<dynamic> json) {
    return json == null
        ? <PrivacyPolicy>[]
        : json.map((dynamic value) => PrivacyPolicy.fromJson(value)).toList();
  }

  static Map<String, PrivacyPolicy> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PrivacyPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PrivacyPolicy.fromJson(value));
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
    return 'PrivacyPolicy[content=$content, ]';
  }
}
