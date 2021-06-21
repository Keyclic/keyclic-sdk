// @dart=2.10
part of keyclic_sdk_api.api;

class BusinessActivityLinksImageIriTemplateMapping {
  BusinessActivityLinksImageIriTemplateMapping({
    this.businessActivity,
  });

  factory BusinessActivityLinksImageIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinksImageIriTemplateMapping(
      businessActivity: json['businessActivity'],
    );
  }

  String businessActivity;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksImageIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        businessActivity == other.businessActivity;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= businessActivity?.hashCode ?? 0;

    return hashCode;
  }

  static List<BusinessActivityLinksImageIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                BusinessActivityLinksImageIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <BusinessActivityLinksImageIriTemplateMapping>[];
  }

  static Map<String, BusinessActivityLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, BusinessActivityLinksImageIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(key,
              BusinessActivityLinksImageIriTemplateMapping.fromJson(value));
        }) ??
        <String, BusinessActivityLinksImageIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (businessActivity != null) 'businessActivity': businessActivity,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinksImageIriTemplateMapping[businessActivity=$businessActivity, ]';
  }
}
