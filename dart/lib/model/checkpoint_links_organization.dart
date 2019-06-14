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
        CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the organization associated to the given checkpoint. */
  String href;

  CategoryLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointLinksOrganization &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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

  static List<CheckpointLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? List<CheckpointLinksOrganization>()
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
}
