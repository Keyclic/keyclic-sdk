// @dart=2.10
part of keyclic_sdk_api.api;

class OperationLinksTrackingIriTemplate {
  OperationLinksTrackingIriTemplate({
    this.mapping,
  });

  factory OperationLinksTrackingIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksTrackingIriTemplate(
      mapping: OperationLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  OperationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksTrackingIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinksTrackingIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksTrackingIriTemplate.fromJson(value))
            ?.toList() ??
        <OperationLinksTrackingIriTemplate>[];
  }

  static Map<String, OperationLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksTrackingIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, OperationLinksTrackingIriTemplate.fromJson(value));
        }) ??
        <String, OperationLinksTrackingIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksTrackingIriTemplate[mapping=$mapping, ]';
  }
}
