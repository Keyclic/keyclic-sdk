part of keyclic_sdk_api.api;

class ApplicationLinksSelfIriTemplateMapping {
  ApplicationLinksSelfIriTemplateMapping({
    this.token,
  });

  ApplicationLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    token = json['token'];
  }

  String token;

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

  Map<String, dynamic> toJson() {
    return {
      'token': token,
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksSelfIriTemplateMapping[token=$token, ]';
  }

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
}
