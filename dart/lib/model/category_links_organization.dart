part of keyclic_sdk_api.api;

class CategoryLinksOrganization {
  CategoryLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  CategoryLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the organization associated to the given category. */
  String href;

  CategoryLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CategoryLinksOrganization &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<CategoryLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? List<CategoryLinksOrganization>()
        : json
            .map((value) => CategoryLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, CategoryLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CategoryLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CategoryLinksOrganization.fromJson(value));
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
    return 'CategoryLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
