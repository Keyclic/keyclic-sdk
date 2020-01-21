part of keyclic_sdk_api.api;

class AgreementPrivacyPolicy {
  AgreementPrivacyPolicy({
    this.content,
  });

  factory AgreementPrivacyPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AgreementPrivacyPolicy(
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

    return other is AgreementPrivacyPolicy &&
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

  static List<AgreementPrivacyPolicy> listFromJson(List<dynamic> json) {
    return json == null
        ? <AgreementPrivacyPolicy>[]
        : json
            .map((dynamic value) => AgreementPrivacyPolicy.fromJson(value))
            .toList();
  }

  static Map<String, AgreementPrivacyPolicy> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, AgreementPrivacyPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = AgreementPrivacyPolicy.fromJson(value));
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
    return 'AgreementPrivacyPolicy[content=$content, ]';
  }
}
