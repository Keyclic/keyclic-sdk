part of keyclic_sdk_api.api;

class BusinessActivityLinksSchema {
  BusinessActivityLinksSchema({
    this.href,
    this.iriTemplate,
  });

  BusinessActivityLinksSchema.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        BusinessActivityLinksSchemaIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the schema associated to the given businessactivity. */
  String href;

  BusinessActivityLinksSchemaIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSchema &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksSchema[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<BusinessActivityLinksSchema> listFromJson(List<dynamic> json) {
    return json == null
        ? List<BusinessActivityLinksSchema>()
        : json
            .map((value) => BusinessActivityLinksSchema.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityLinksSchema> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinksSchema>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinksSchema.fromJson(value));
    }
    return map;
  }
}
