part of keyclic_sdk_api.api;

class CheckpointLinks {
  CheckpointLinks({
    this.organization,
  });

  CheckpointLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = CheckpointLinksOrganization.fromJson(json['organization']);
  }

  CheckpointLinksOrganization organization;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointLinks &&
        runtimeType == other.runtimeType &&
        organization == other.organization;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;

    return hashCode;
  }

  static List<CheckpointLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <CheckpointLinks>[]
        : json.map((dynamic value) => CheckpointLinks.fromJson(value)).toList();
  }

  static Map<String, CheckpointLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CheckpointLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = CheckpointLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'CheckpointLinks[organization=$organization, ]';
  }
}
