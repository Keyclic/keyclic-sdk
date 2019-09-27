part of keyclic_sdk_api.api;

class ExternalServiceLinksSelfIriTemplate {
  ExternalServiceLinksSelfIriTemplate({
    this.mapping,
  });

  ExternalServiceLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksServiceIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksServiceIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksSelfIriTemplate &&
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

  static List<ExternalServiceLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ExternalServiceLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) =>
                ExternalServiceLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ExternalServiceLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServiceLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServiceLinksSelfIriTemplate.fromJson(value));
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
    return 'ExternalServiceLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
