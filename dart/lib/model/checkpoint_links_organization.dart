part of keyclic_sdk_api.api;

class CheckpointLinksOrganization {
  CheckpointLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory CheckpointLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CheckpointLinksOrganization(
      href: json['href'],
      iriTemplate:
          CheckpointLinksOrganizationIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given checkpoint. */
  String href;

  CheckpointLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointLinksOrganization &&
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

  static List<CheckpointLinksOrganization> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => CheckpointLinksOrganization.fromJson(value))
            ?.toList() ??
        <CheckpointLinksOrganization>[];
  }

  static Map<String, CheckpointLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, CheckpointLinksOrganization>(
            (String key, dynamic value) {
          return MapEntry(key, CheckpointLinksOrganization.fromJson(value));
        }) ??
        <String, CheckpointLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'CheckpointLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
