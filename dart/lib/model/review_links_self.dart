part of keyclic_sdk_api.api;

class ReviewLinksSelf {
  ReviewLinksSelf({
    this.href,
    this.iriTemplate,
  });

  ReviewLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = ReviewLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given review. */
  String href;

  ReviewLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewLinksSelf>[]
        : json.map((dynamic value) => ReviewLinksSelf.fromJson(value)).toList();
  }

  static Map<String, ReviewLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReviewLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
