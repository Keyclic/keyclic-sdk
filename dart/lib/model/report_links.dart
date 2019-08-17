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

  ReportLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    category = ReportLinksCategory.fromJson(json['category']);
    delegatedFrom = ReportLinksDelegatedFrom.fromJson(json['delegatedFrom']);
    delegatedTo = ReportLinksDelegatedTo.fromJson(json['delegatedTo']);
    feedback = ReportLinksFeedback.fromJson(json['feedback']);
    operations = ReportLinksOperations.fromJson(json['operations']);
    organization = ReportLinksOrganization.fromJson(json['organization']);
    place = ReportLinksPlace.fromJson(json['place']);
    self = ReportLinksSelf.fromJson(json['self']);
    tracking = ReportLinksTracking.fromJson(json['tracking']);
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
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'delegatedFrom': delegatedFrom,
      'delegatedTo': delegatedTo,
      'feedback': feedback,
      'operations': operations,
      'organization': organization,
      'place': place,
      'self': self,
      'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'ReportLinks[category=$category, delegatedFrom=$delegatedFrom, delegatedTo=$delegatedTo, feedback=$feedback, operations=$operations, organization=$organization, place=$place, self=$self, tracking=$tracking, ]';
  }

  static List<ReportLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinks>()
        : json.map((value) => ReportLinks.fromJson(value)).toList();
  }

  static Map<String, ReportLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinks.fromJson(value));
    }
    return map;
  }
}
