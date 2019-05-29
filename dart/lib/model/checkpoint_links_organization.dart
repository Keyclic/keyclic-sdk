part of keyclic_sdk_api.api;

class CheckpointLinksOrganization {
  CheckpointLinksOrganization();

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
