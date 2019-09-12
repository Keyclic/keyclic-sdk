part of keyclic_sdk_api.api;

class OperationLinksReportIriTemplate {
  OperationLinksReportIriTemplate({
    this.mapping,
  });

  OperationLinksReportIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is OperationLinksReportIriTemplate &&
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

  static List<OperationLinksReportIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OperationLinksReportIriTemplate>[]
        : json
            .map((dynamic value) =>
                OperationLinksReportIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OperationLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksReportIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksReportIriTemplate.fromJson(value));
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
    return 'OperationLinksReportIriTemplate[mapping=$mapping, ]';
  }
}
