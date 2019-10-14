part of keyclic_sdk_api.api;

class ContributionLinks {
  ContributionLinks({
    this.contributor,
    this.feedback,
  });

  ContributionLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    contributor = ContributionLinksContributor.fromJson(json['contributor']);
    feedback = ContributionLinksFeedback.fromJson(json['feedback']);
  }

  ContributionLinksContributor contributor;

  ContributionLinksFeedback feedback;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContributionLinks &&
        runtimeType == other.runtimeType &&
        contributor == other.contributor &&
        feedback == other.feedback;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= contributor?.hashCode ?? 0;
    hashCode ^= feedback?.hashCode ?? 0;

    return hashCode;
  }

  static List<ContributionLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <ContributionLinks>[]
        : json
            .map((dynamic value) => ContributionLinks.fromJson(value))
            .toList();
  }

  static Map<String, ContributionLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContributionLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ContributionLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (contributor != null) 'contributor': contributor,
      if (feedback != null) 'feedback': feedback,
    };
  }

  @override
  String toString() {
    return 'ContributionLinks[contributor=$contributor, feedback=$feedback, ]';
  }
}
