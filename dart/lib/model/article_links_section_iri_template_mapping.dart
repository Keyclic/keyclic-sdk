// @dart=2.10
part of keyclic_sdk_api.api;

class ArticleLinksSectionIriTemplateMapping {
  ArticleLinksSectionIriTemplateMapping({
    this.section,
  });

  factory ArticleLinksSectionIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSectionIriTemplateMapping(
      section: json['section'],
    );
  }

  String section;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSectionIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        section == other.section;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= section?.hashCode ?? 0;

    return hashCode;
  }

  static List<ArticleLinksSectionIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ArticleLinksSectionIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ArticleLinksSectionIriTemplateMapping>[];
  }

  static Map<String, ArticleLinksSectionIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ArticleLinksSectionIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, ArticleLinksSectionIriTemplateMapping.fromJson(value));
        }) ??
        <String, ArticleLinksSectionIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (section != null) 'section': section,
    };
  }

  @override
  String toString() {
    return 'ArticleLinksSectionIriTemplateMapping[section=$section, ]';
  }
}
