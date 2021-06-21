// @dart=2.10
part of keyclic_sdk_api.api;

class PlaceLinksOrganizationIriTemplate {
  PlaceLinksOrganizationIriTemplate({
    this.mapping,
  });

  factory PlaceLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceLinksOrganizationIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksOrganizationIriTemplate &&
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

  static List<PlaceLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PlaceLinksOrganizationIriTemplate.fromJson(value))
            ?.toList() ??
        <PlaceLinksOrganizationIriTemplate>[];
  }

  static Map<String, PlaceLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PlaceLinksOrganizationIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, PlaceLinksOrganizationIriTemplate.fromJson(value));
        }) ??
        <String, PlaceLinksOrganizationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
