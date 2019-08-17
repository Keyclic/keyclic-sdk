part of keyclic_sdk_api.api;

class PublicationLinksAuthorIriTemplate {
  PublicationLinksAuthorIriTemplate({
    this.mapping,
  });

  PublicationLinksAuthorIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is PublicationLinksAuthorIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<PublicationLinksAuthorIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<PublicationLinksAuthorIriTemplate>()
        : json
            .map((value) => PublicationLinksAuthorIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, PublicationLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationLinksAuthorIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationLinksAuthorIriTemplate.fromJson(value));
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
    return 'PublicationLinksAuthorIriTemplate[mapping=$mapping, ]';
  }
}
