part of keyclic_sdk_api.api;

class ReportLinks {
  ReportLinks({
    this.category,
    this.delegatedFrom,
    this.delegatedTo,
    this.feedback,
    this.operations,
    this.organization,
    this.place,
    this.self,
    this.tracking,
  });

  factory ReportLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinks(
      category: ReportLinksCategory.fromJson(json['category']),
      delegatedFrom: ReportLinksDelegatedFrom.fromJson(json['delegatedFrom']),
      delegatedTo: ReportLinksDelegatedTo.fromJson(json['delegatedTo']),
      feedback: ReportLinksFeedback.fromJson(json['feedback']),
      operations: ReportLinksOperations.fromJson(json['operations']),
      organization: ReportLinksOrganization.fromJson(json['organization']),
      place: ReportLinksPlace.fromJson(json['place']),
      self: ReportLinksSelf.fromJson(json['self']),
      tracking: ReportLinksTracking.fromJson(json['tracking']),
    );
  }

  ReportLinksCategory category;

  ReportLinksDelegatedFrom delegatedFrom;

  ReportLinksDelegatedTo delegatedTo;

  ReportLinksFeedback feedback;

  ReportLinksOperations operations;

  ReportLinksOrganization organization;

  ReportLinksPlace place;

  ReportLinksSelf self;

  ReportLinksTracking tracking;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinks &&
        runtimeType == other.runtimeType &&
        category == other.category &&
        delegatedFrom == other.delegatedFrom &&
        delegatedTo == other.delegatedTo &&
        feedback == other.feedback &&
        operations == other.operations &&
        organization == other.organization &&
        place == other.place &&
        self == other.self &&
        tracking == other.tracking;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= delegatedFrom?.hashCode ?? 0;
    hashCode ^= delegatedTo?.hashCode ?? 0;
    hashCode ^= feedback?.hashCode ?? 0;
    hashCode ^= operations?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;
    hashCode ^= tracking?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinks.fromJson(value))
            ?.toList() ??
        <ReportLinks>[];
  }

  static Map<String, ReportLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ReportLinks>((String key, dynamic value) {
          return MapEntry(key, ReportLinks.fromJson(value));
        }) ??
        <String, ReportLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (category != null) 'category': category.toJson(),
      if (delegatedFrom != null) 'delegatedFrom': delegatedFrom.toJson(),
      if (delegatedTo != null) 'delegatedTo': delegatedTo.toJson(),
      if (feedback != null) 'feedback': feedback.toJson(),
      if (operations != null) 'operations': operations.toJson(),
      if (organization != null) 'organization': organization.toJson(),
      if (place != null) 'place': place.toJson(),
      if (self != null) 'self': self.toJson(),
      if (tracking != null) 'tracking': tracking.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinks[category=$category, delegatedFrom=$delegatedFrom, delegatedTo=$delegatedTo, feedback=$feedback, operations=$operations, organization=$organization, place=$place, self=$self, tracking=$tracking, ]';
  }
}
