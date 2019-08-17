part of keyclic_sdk_api.api;

class BusinessActivityLinksThumbnailIriTemplate {
  BusinessActivityLinksThumbnailIriTemplate({
    this.mapping,
  });

  BusinessActivityLinksThumbnailIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        BusinessActivityLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  BusinessActivityLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksThumbnailIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<BusinessActivityLinksThumbnailIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<BusinessActivityLinksThumbnailIriTemplate>()
        : json
            .map((value) =>
                BusinessActivityLinksThumbnailIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksThumbnailIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksThumbnailIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinksThumbnailIriTemplate.fromJson(value));
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
    return 'BusinessActivityLinksThumbnailIriTemplate[mapping=$mapping, ]';
  }
}
