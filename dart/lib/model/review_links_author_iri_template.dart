part of keyclic_sdk_api.api;

class ReviewLinksAuthorIriTemplate {
  ReviewLinksAuthorIriTemplate({
    this.mapping,
  });

  ReviewLinksAuthorIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is ReviewLinksAuthorIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReviewLinksAuthorIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReviewLinksAuthorIriTemplate>()
        : json
            .map((value) => ReviewLinksAuthorIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReviewLinksAuthorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksAuthorIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksAuthorIriTemplate.fromJson(value));
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
    return 'ReviewLinksAuthorIriTemplate[mapping=$mapping, ]';
  }
}
