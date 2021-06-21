// @dart=2.10
part of keyclic_sdk_api.api;

class CategoryLinksOrganization {
  CategoryLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory CategoryLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CategoryLinksOrganization(
      href: json['href'],
      iriTemplate:
          CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given category. */
  String href;

  CategoryLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksOrganization &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<CategoryLinksOrganization> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => CategoryLinksOrganization.fromJson(value))
            ?.toList() ??
        <CategoryLinksOrganization>[];
  }

  static Map<String, CategoryLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, CategoryLinksOrganization>(
            (String key, dynamic value) {
          return MapEntry(key, CategoryLinksOrganization.fromJson(value));
        }) ??
        <String, CategoryLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'CategoryLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
