part of keyclic_sdk_api.api;

class SectionLinksSelf {
  SectionLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory SectionLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SectionLinksSelf(
      href: json['href'],
      iriTemplate: SectionLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given section. */
  String href;

  SectionLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionLinksSelf &&
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

  static List<SectionLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <SectionLinksSelf>[]
        : json
            .map((dynamic value) => SectionLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, SectionLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SectionLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SectionLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'SectionLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
