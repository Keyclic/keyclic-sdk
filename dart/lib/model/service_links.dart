part of keyclic_sdk_api.api;

class ServiceLinks {
  ServiceLinks({
    this.organization,
  });

  ServiceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = ServiceLinksOrganization.fromJson(json['organization']);
  }

  ServiceLinksOrganization organization;

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'ServiceLinks[organization=$organization, ]';
  }

  static List<ServiceLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ServiceLinks>()
        : json.map((value) => ServiceLinks.fromJson(value)).toList();
  }

  static Map<String, ServiceLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ServiceLinks.fromJson(value));
    }
    return map;
  }
}
