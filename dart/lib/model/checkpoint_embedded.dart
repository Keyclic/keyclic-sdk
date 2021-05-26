part of keyclic_sdk_api.api;

class CheckpointEmbedded {
  CheckpointEmbedded({
    this.createdBy,
  });

  factory CheckpointEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CheckpointEmbedded(
      createdBy: Person.fromJson(json['createdBy']),
    );
  }

  Person createdBy;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointEmbedded &&
        runtimeType == other.runtimeType &&
        createdBy == other.createdBy;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= createdBy?.hashCode ?? 0;

    return hashCode;
  }

  static List<CheckpointEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => CheckpointEmbedded.fromJson(value))
            ?.toList() ??
        <CheckpointEmbedded>[];
  }

  static Map<String, CheckpointEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, CheckpointEmbedded>((String key, dynamic value) {
          return MapEntry(key, CheckpointEmbedded.fromJson(value));
        }) ??
        <String, CheckpointEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdBy != null) 'createdBy': createdBy.toJson(),
    };
  }

  @override
  String toString() {
    return 'CheckpointEmbedded[createdBy=$createdBy, ]';
  }
}
