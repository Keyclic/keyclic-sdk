part of keyclic_sdk_api.api;

class InternalServiceLinksOrganization {
  InternalServiceLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  InternalServiceLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = InternalServiceLinksOrganizationIriTemplate.fromJson(
        json['iriTemplate']);
  }

  /* The URI of the organization associated to the given internalservice. */
  String href;

  InternalServiceLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksOrganization &&
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

  static List<InternalServiceLinksOrganization> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <InternalServiceLinksOrganization>[]
        : json
            .map((dynamic value) =>
                InternalServiceLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, InternalServiceLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InternalServiceLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InternalServiceLinksOrganization.fromJson(value));
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
    return 'InternalServiceLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
