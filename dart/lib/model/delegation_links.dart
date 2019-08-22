part of keyclic_sdk_api.api;

class DelegationLinks {
  DelegationLinks({
    this.createdBy,
    this.from,
    this.report,
    this.self,
    this.to,
  });

  DelegationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    createdBy = DelegationLinksCreatedBy.fromJson(json['createdBy']);
    from = DelegationLinksFrom.fromJson(json['from']);
    report = DelegationLinksReport.fromJson(json['report']);
    self = DelegationLinksSelf.fromJson(json['self']);
    to = DelegationLinksTo.fromJson(json['to']);
  }

  DelegationLinksCreatedBy createdBy;

  DelegationLinksFrom from;

  DelegationLinksReport report;

  DelegationLinksSelf self;

  DelegationLinksTo to;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinks &&
        runtimeType == other.runtimeType &&
        createdBy == other.createdBy &&
        from == other.from &&
        report == other.report &&
        self == other.self &&
        to == other.to;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      createdBy.hashCode ^
      from.hashCode ^
      report.hashCode ^
      self.hashCode ^
      to.hashCode;

  static List<DelegationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationLinks>[]
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

  Map<String, dynamic> toJson() {
    return {
      'createdBy': createdBy,
      'from': from,
      'report': report,
      'self': self,
      'to': to,
    };
  }

  @override
  String toString() {
    return 'DelegationLinks[createdBy=$createdBy, from=$from, report=$report, self=$self, to=$to, ]';
  }
}
