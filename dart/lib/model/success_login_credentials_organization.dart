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

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SuccessLoginCredentialsOrganization &&
        runtimeType == other.runtimeType &&
        type == other.type &&
        id == other.id;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;

    return hashCode;
  }

  static List<SuccessLoginCredentialsOrganization> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <SuccessLoginCredentialsOrganization>[]
        : json
            .map((dynamic value) =>
                SuccessLoginCredentialsOrganization.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      if (type != null) 'type': type,
      if (id != null) 'id': id,
    };
  }

  @override
  String toString() {
    return 'SuccessLoginCredentialsOrganization[type=$type, id=$id, ]';
  }
}
