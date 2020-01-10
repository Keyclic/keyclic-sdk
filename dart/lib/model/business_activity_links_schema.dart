part of keyclic_sdk_api.api;

class BusinessActivityLinksSchema {
  BusinessActivityLinksSchema({
    this.href,
    this.iriTemplate,
  });

  factory BusinessActivityLinksSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksSchema(
      href: json['href'],
      iriTemplate:
          BusinessActivityLinksSchemaIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the schema associated to the given businessactivity. */
  String href;

  BusinessActivityLinksSchemaIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSchema &&
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

  static List<BusinessActivityLinksSchema> listFromJson(List<dynamic> json) {
    return json == null
        ? <BusinessActivityLinksSchema>[]
        : json
            .map((dynamic value) => BusinessActivityLinksSchema.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksSchema> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksSchema>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinksSchema.fromJson(value));
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
    return 'BusinessActivityLinksSchema[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
