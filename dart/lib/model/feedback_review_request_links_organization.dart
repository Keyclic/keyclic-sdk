part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksOrganization {
  FeedbackReviewRequestLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  FeedbackReviewRequestLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = FeedbackReviewRequestLinksOrganizationIriTemplate.fromJson(
        json['iriTemplate']);
  }

  /* The URI of the organization associated to the given feedbackreviewrequest. */
  String href;

  FeedbackReviewRequestLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksOrganization &&
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

  static List<FeedbackReviewRequestLinksOrganization> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinksOrganization>[]
        : json
            .map((dynamic value) =>
                FeedbackReviewRequestLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestLinksOrganization.fromJson(value));
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
    return 'FeedbackReviewRequestLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
