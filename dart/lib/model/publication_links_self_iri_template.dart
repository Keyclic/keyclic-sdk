part of keyclic_sdk_api.api;

class PublicationLinksSelfIriTemplate {
  PublicationLinksSelfIriTemplate({
    this.mapping,
  });

  PublicationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = PublicationLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  PublicationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelfIriTemplate &&
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

  static List<PublicationLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <PublicationLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) =>
                PublicationLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksSelfIriTemplate.fromJson(value));
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
    return 'PublicationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
