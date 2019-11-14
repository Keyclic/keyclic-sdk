part of keyclic_sdk_api.api;

class ApplicationAgreementPrivacyPolicy {
  ApplicationAgreementPrivacyPolicy({
    this.content,
    this.version,
  });

  ApplicationAgreementPrivacyPolicy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    content = json['content'];
    version = json['version'];
  }

  String content;

  String version;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationAgreementPrivacyPolicy &&
        runtimeType == other.runtimeType &&
        content == other.content &&
        version == other.version;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= content?.hashCode ?? 0;
    hashCode ^= version?.hashCode ?? 0;

    return hashCode;
  }

  static List<ApplicationAgreementPrivacyPolicy> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ApplicationAgreementPrivacyPolicy>[]
        : json
            .map((dynamic value) =>
                ApplicationAgreementPrivacyPolicy.fromJson(value))
            .toList();
  }

  static Map<String, ApplicationAgreementPrivacyPolicy> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ApplicationAgreementPrivacyPolicy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationAgreementPrivacyPolicy.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (content != null) 'content': content,
      if (version != null) 'version': version,
    };
  }

  @override
  String toString() {
    return 'ApplicationAgreementPrivacyPolicy[content=$content, version=$version, ]';
  }
}
