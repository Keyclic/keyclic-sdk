part of keyclic_sdk_api.api;

class DelegationLinks {
  DelegationLinks({
    this.self,
    this.from,
    this.to,
    this.report,
    this.createdBy,
  });

  DelegationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = DelegationLinksSelf.fromJson(json['self']);
    from = DelegationLinksFrom.fromJson(json['from']);
    to = DelegationLinksTo.fromJson(json['to']);
    report = DelegationLinksReport.fromJson(json['report']);
    createdBy = DelegationLinksCreatedBy.fromJson(json['createdBy']);
  }

  DelegationLinksSelf self;

  DelegationLinksFrom from;

  DelegationLinksTo to;

  DelegationLinksReport report;

  DelegationLinksCreatedBy createdBy;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'from': from,
      'to': to,
      'report': report,
      'createdBy': createdBy,
    };
  }

  @override
  String toString() {
    return 'DelegationLinks[self=$self, from=$from, to=$to, report=$report, createdBy=$createdBy, ]';
  }

  static List<DelegationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationLinks>()
        : json.map((value) => DelegationLinks.fromJson(value)).toList();
  }

  static Map<String, DelegationLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DelegationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinks.fromJson(value));
    }
    return map;
  }
}
