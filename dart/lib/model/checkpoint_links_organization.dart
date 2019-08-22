part of keyclic_sdk_api.api;

class CheckpointLinksOrganization {
  CheckpointLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  CheckpointLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        CheckpointLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
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
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<CheckpointLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? <CheckpointLinksOrganization>[]
        : json
            .map((value) => CheckpointLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, CheckpointLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, CheckpointLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CheckpointLinksOrganization.fromJson(value));
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
    return 'CheckpointLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
