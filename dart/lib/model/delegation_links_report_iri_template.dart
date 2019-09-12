part of keyclic_sdk_api.api;

class DelegationLinksReportIriTemplate {
  DelegationLinksReportIriTemplate({
    this.mapping,
  });

  DelegationLinksReportIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = DelegationLinksReportIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksReportIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (mapping?.hashCode ?? 0);

    return hashCode;
  }

  static List<DelegationLinksReportIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <DelegationLinksReportIriTemplate>[]
        : json
            .map((dynamic value) =>
                DelegationLinksReportIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksReportIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksReportIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksReportIriTemplate[mapping=$mapping, ]';
  }
}
