part of keyclic_sdk_api.api;

class ContributionLinksFeedback {
  ContributionLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  ContributionLinksFeedback.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        ContributionLinksFeedbackIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the feedback associated to the given contribution. */
  String href;

  ContributionLinksFeedbackIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinksFeedback &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<ContributionLinksFeedback> listFromJson(List<dynamic> json) {
    return json == null
        ? <ContributionLinksFeedback>[]
        : json
            .map((value) => ContributionLinksFeedback.fromJson(value))
            .toList();
  }

  static Map<String, ContributionLinksFeedback> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ContributionLinksFeedback>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ContributionLinksFeedback.fromJson(value));
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
    return 'ContributionLinksFeedback[href=$href, iriTemplate=$iriTemplate, ]';
  }
}