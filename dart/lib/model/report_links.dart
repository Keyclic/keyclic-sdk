part of keyclic_sdk_api.api;

class ReportLinks {
  ReportLinks({
    this.self,
    this.feedback,
    this.operations,
    this.organization,
    this.category,
    this.delegatedTo,
    this.delegatedFrom,
    this.place,
    this.tracking,
  });

  ReportLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = ReportLinksSelf.fromJson(json['self']);
    feedback = ReportLinksFeedback.fromJson(json['feedback']);
    operations = ReportLinksOperations.fromJson(json['operations']);
    organization = ReportLinksOrganization.fromJson(json['organization']);
    category = ReportLinksCategory.fromJson(json['category']);
    delegatedTo = ReportLinksDelegatedTo.fromJson(json['delegatedTo']);
    delegatedFrom = ReportLinksDelegatedFrom.fromJson(json['delegatedFrom']);
    place = ReportLinksPlace.fromJson(json['place']);
    tracking = ReportLinksTracking.fromJson(json['tracking']);
  }

  ReportLinksSelf self;

  ReportLinksFeedback feedback;

  ReportLinksOperations operations;

  ReportLinksOrganization organization;

  ReportLinksCategory category;

  ReportLinksDelegatedTo delegatedTo;

  ReportLinksDelegatedFrom delegatedFrom;

  ReportLinksPlace place;

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
      'self': self,
      'feedback': feedback,
      'operations': operations,
      'organization': organization,
      'category': category,
      'delegatedTo': delegatedTo,
      'delegatedFrom': delegatedFrom,
      'place': place,
      'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'ReportLinks[self=$self, feedback=$feedback, operations=$operations, organization=$organization, category=$category, delegatedTo=$delegatedTo, delegatedFrom=$delegatedFrom, place=$place, tracking=$tracking, ]';
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