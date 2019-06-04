part of keyclic_sdk_api.api;

class SuccessLoginCredentialsOrganization {
  SuccessLoginCredentialsOrganization({
    this.type,
    this.id,
  });

  SuccessLoginCredentialsOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    type = json['type'];
    id = json['id'];
  }

  String type;

  String id;

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'id': id,
    };
  }

  @override
  String toString() {
    return 'SuccessLoginCredentialsOrganization[type=$type, id=$id, ]';
  }

  static List<SuccessLoginCredentialsOrganization> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<SuccessLoginCredentialsOrganization>()
        : json
            .map((value) => SuccessLoginCredentialsOrganization.fromJson(value))
            .toList();
  }

  static Map<String, SuccessLoginCredentialsOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, SuccessLoginCredentialsOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = SuccessLoginCredentialsOrganization.fromJson(value));
    }
    return map;
  }
}
