part of keyclic_sdk_api.api;

class ApplicationAgreementOlderThan {
  ApplicationAgreementOlderThan({
    this.content,
  });

  factory ApplicationAgreementOlderThan.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationAgreementOlderThan(
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

    return other is ApplicationAgreementOlderThan &&
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

  static List<ApplicationAgreementOlderThan> listFromJson(List<dynamic> json) {
    return json == null
        ? <ApplicationAgreementOlderThan>[]
        : json
            .map((dynamic value) =>
                ApplicationAgreementOlderThan.fromJson(value))
            .toList();
  }

  static Map<String, ApplicationAgreementOlderThan> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ApplicationAgreementOlderThan>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationAgreementOlderThan.fromJson(value));
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
    return 'ApplicationAgreementOlderThan[content=$content, ]';
  }
}
