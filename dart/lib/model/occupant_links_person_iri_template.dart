part of keyclic_sdk_api.api;

class OccupantLinksPersonIriTemplate {
  OccupantLinksPersonIriTemplate({
    this.mapping,
  });

  OccupantLinksPersonIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinksPersonIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<OccupantLinksPersonIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OccupantLinksPersonIriTemplate>()
        : json
            .map((value) => OccupantLinksPersonIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OccupantLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OccupantLinksPersonIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OccupantLinksPersonIriTemplate.fromJson(value));
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
    return 'OccupantLinksPersonIriTemplate[mapping=$mapping, ]';
  }
}
