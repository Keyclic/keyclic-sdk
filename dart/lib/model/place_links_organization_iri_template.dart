part of keyclic_sdk_api.api;

class PlaceLinksOrganizationIriTemplate {
  PlaceLinksOrganizationIriTemplate({
    this.mapping,
  });

  PlaceLinksOrganizationIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<PlaceLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<PlaceLinksOrganizationIriTemplate>()
        : json
            .map((value) => PlaceLinksOrganizationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PlaceLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PlaceLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceLinksOrganizationIriTemplate.fromJson(value));
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
    return 'PlaceLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
