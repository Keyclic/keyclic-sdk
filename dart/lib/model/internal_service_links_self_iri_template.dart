part of keyclic_sdk_api.api;

class InternalServiceLinksSelfIriTemplate {
  InternalServiceLinksSelfIriTemplate({
    this.mapping,
  });

  InternalServiceLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        InternalServiceLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  InternalServiceLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<InternalServiceLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <InternalServiceLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) =>
                InternalServiceLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, InternalServiceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InternalServiceLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InternalServiceLinksSelfIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
