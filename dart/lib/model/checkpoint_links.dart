part of keyclic_sdk_api.api;

class CheckpointLinks {
  CheckpointLinks({
    this.organization,
  });

  factory CheckpointLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CheckpointLinks(
      organization: CheckpointLinksOrganization.fromJson(json['organization']),
    );
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
    return json
            ?.map((dynamic value) => CheckpointLinks.fromJson(value))
            ?.toList() ??
        <CheckpointLinks>[];
  }

  static Map<String, CheckpointLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, CheckpointLinks.fromJson(value));
        }) ??
        <String, CheckpointLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (organization != null) 'organization': organization.toJson(),
    };
  }

  @override
  String toString() {
    return 'CheckpointLinks[organization=$organization, ]';
  }
}
