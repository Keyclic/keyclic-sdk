part of keyclic_sdk_api.api;

class ApplicationLinksSelfIriTemplateMapping {
  ApplicationLinksSelfIriTemplateMapping({
    this.application,
  });

  ApplicationLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    application = json['application'];
  }

  String application;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ApplicationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<ApplicationLinksSelfIriTemplateMapping>()
        : json
            .map((value) =>
                ApplicationLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, ApplicationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ApplicationLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'application': application,
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksSelfIriTemplateMapping[application=$application, ]';
  }
}
