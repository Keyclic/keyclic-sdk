part of keyclic_sdk_api.api;

class ApplicationLinksSelfIriTemplate {
  ApplicationLinksSelfIriTemplate({
    this.mapping,
  });

  ApplicationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = ApplicationLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  ApplicationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksSelfIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<ApplicationLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<ApplicationLinksSelfIriTemplate>()
        : json
            .map((value) => ApplicationLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ApplicationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ApplicationLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
