// @dart=2.10
part of keyclic_sdk_api.api;

class AssignmentLinks {
  AssignmentLinks({
    this.report,
    this.self,
    this.service,
  });

  factory AssignmentLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinks(
      report: AssignmentLinksReport.fromJson(json['report']),
      self: AssignmentLinksSelf.fromJson(json['self']),
      service: AssignmentLinksService.fromJson(json['service']),
    );
  }

  AssignmentLinksReport report;

  AssignmentLinksSelf self;

  AssignmentLinksService service;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinks &&
        runtimeType == other.runtimeType &&
        report == other.report &&
        self == other.self &&
        service == other.service;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= report?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;
    hashCode ^= service?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentLinks.fromJson(value))
            ?.toList() ??
        <AssignmentLinks>[];
  }

  static Map<String, AssignmentLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinks>((String key, dynamic value) {
          return MapEntry(key, AssignmentLinks.fromJson(value));
        }) ??
        <String, AssignmentLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (report != null) 'report': report.toJson(),
      if (self != null) 'self': self.toJson(),
      if (service != null) 'service': service.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinks[report=$report, self=$self, service=$service, ]';
  }
}
