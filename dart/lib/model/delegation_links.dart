part of keyclic_sdk_api.api;

class DelegationLinks {
  DelegationLinks({
    this.createdBy,
    this.report,
    this.self,
    this.service,
  });

  DelegationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    createdBy = DelegationLinksCreatedBy.fromJson(json['createdBy']);
    report = DelegationLinksReport.fromJson(json['report']);
    self = DelegationLinksSelf.fromJson(json['self']);
    service = DelegationLinksService.fromJson(json['service']);
  }

  DelegationLinksCreatedBy createdBy;

  DelegationLinksReport report;

  DelegationLinksSelf self;

  DelegationLinksService service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinks &&
        runtimeType == other.runtimeType &&
        createdBy == other.createdBy &&
        report == other.report &&
        self == other.self &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= createdBy?.hashCode ?? 0;
    hashCode ^= report?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;
    hashCode ^= service?.hashCode ?? 0;

    return hashCode;
  }

  static List<DelegationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationLinks>[]
        : json.map((dynamic value) => DelegationLinks.fromJson(value)).toList();
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
      'report': report,
      'self': self,
      'service': service,
    };
  }

  @override
  String toString() {
    return 'DelegationLinks[createdBy=$createdBy, report=$report, self=$self, service=$service, ]';
  }
}
