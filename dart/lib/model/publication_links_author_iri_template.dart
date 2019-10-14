part of keyclic_sdk_api.api;

class PublicationLinksAuthorIriTemplate {
  PublicationLinksAuthorIriTemplate({
    this.mapping,
  });

  PublicationLinksAuthorIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = ContributionLinksContributorIriTemplateMapping.fromJson(
        json['mapping']);
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksAuthorIriTemplate &&
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

  static List<PublicationLinksAuthorIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <PublicationLinksAuthorIriTemplate>[]
        : json
            .map((dynamic value) =>
                PublicationLinksAuthorIriTemplate.fromJson(value))
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
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'PublicationLinksAuthorIriTemplate[mapping=$mapping, ]';
  }
}
