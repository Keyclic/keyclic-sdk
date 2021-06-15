part of keyclic_sdk_api.api;

class FeedbackLinksSelf {
  FeedbackLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory FeedbackLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksSelf(
      href: json['href'],
      iriTemplate: FeedbackLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given feedback. */
  String href;

  FeedbackLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackLinksSelf.fromJson(value))
            ?.toList() ??
        <FeedbackLinksSelf>[];
  }

  static Map<String, FeedbackLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksSelf>((String key, dynamic value) {
          return MapEntry(key, FeedbackLinksSelf.fromJson(value));
        }) ??
        <String, FeedbackLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
