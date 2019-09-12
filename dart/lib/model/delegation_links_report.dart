part of keyclic_sdk_api.api;

class DelegationLinksReport {
  DelegationLinksReport({
    this.href,
    this.iriTemplate,
  });

  DelegationLinksReport.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksReportIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the report associated to the given delegation. */
  String href;

  DelegationLinksReportIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksReport &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (href?.hashCode ?? 0);
    hashCode ^= (iriTemplate?.hashCode ?? 0);

    return hashCode;
  }

  static List<DelegationLinksReport> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationLinksReport>[]
        : json
            .map((dynamic value) => DelegationLinksReport.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksReport> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksReport>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksReport.fromJson(value));
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
    return 'DelegationLinksReport[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
