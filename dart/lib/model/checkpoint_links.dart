part of keyclic_sdk_api.api;

class CheckpointLinks {
  CheckpointLinks();

  CheckpointLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = CheckpointLinksOrganization.fromJson(json['organization']);
  }

  CheckpointLinksOrganization organization;

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'CheckpointLinks[organization=$organization, ]';
  }

  static List<CheckpointLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<CheckpointLinks>()
        : json.map((value) => CheckpointLinks.fromJson(value)).toList();
  }

  static Map<String, CheckpointLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CheckpointLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CheckpointLinks.fromJson(value));
    }
    return map;
  }
}
