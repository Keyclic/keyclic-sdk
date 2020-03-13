part of keyclic_sdk_api.api;

class KnowledgeBaseLinksSelf {
  KnowledgeBaseLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory KnowledgeBaseLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return KnowledgeBaseLinksSelf(
      href: json['href'],
      iriTemplate:
          KnowledgeBaseLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given knowledgebase. */
  String href;

  KnowledgeBaseLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is KnowledgeBaseLinksSelf &&
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

  static List<KnowledgeBaseLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => KnowledgeBaseLinksSelf.fromJson(value))
            ?.toList() ??
        <KnowledgeBaseLinksSelf>[];
  }

  static Map<String, KnowledgeBaseLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, KnowledgeBaseLinksSelf>((String key, dynamic value) {
          return MapEntry(key, KnowledgeBaseLinksSelf.fromJson(value));
        }) ??
        <String, KnowledgeBaseLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'KnowledgeBaseLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
