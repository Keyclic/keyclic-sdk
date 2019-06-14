part of keyclic_sdk_api.api;

class ReviewLinksAuthor {
  ReviewLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  ReviewLinksAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the author associated to the given review. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksAuthor && runtimeType == other.runtimeType;
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
    return 'ReviewLinksAuthor[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReviewLinksAuthor> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReviewLinksAuthor>()
        : json.map((value) => ReviewLinksAuthor.fromJson(value)).toList();
  }

  static Map<String, ReviewLinksAuthor> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksAuthor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksAuthor.fromJson(value));
    }
    return map;
  }
}
