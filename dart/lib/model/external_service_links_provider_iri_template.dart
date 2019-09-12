part of keyclic_sdk_api.api;

class ExternalServiceLinksProviderIriTemplate {
  ExternalServiceLinksProviderIriTemplate({
    this.mapping,
  });

  ExternalServiceLinksProviderIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksProviderIriTemplate &&
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

  static List<ExternalServiceLinksProviderIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ExternalServiceLinksProviderIriTemplate>[]
        : json
            .map((dynamic value) =>
                ExternalServiceLinksProviderIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ExternalServiceLinksProviderIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServiceLinksProviderIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServiceLinksProviderIriTemplate.fromJson(value));
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
    return 'ExternalServiceLinksProviderIriTemplate[mapping=$mapping, ]';
  }
}
