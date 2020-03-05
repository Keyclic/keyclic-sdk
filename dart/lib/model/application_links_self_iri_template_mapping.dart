part of keyclic_sdk_api.api;

class ApplicationLinksSelfIriTemplateMapping {
  ApplicationLinksSelfIriTemplateMapping({
    this.application,
  });

  factory ApplicationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksSelfIriTemplateMapping(
      application: json['application'],
    );
  }

  String application;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        application == other.application;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= application?.hashCode ?? 0;

    return hashCode;
  }

  static List<ApplicationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ApplicationLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ApplicationLinksSelfIriTemplateMapping>[];
  }

  static Map<String, ApplicationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, ApplicationLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, ApplicationLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (application != null) 'application': application,
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksSelfIriTemplateMapping[application=$application, ]';
  }
}
