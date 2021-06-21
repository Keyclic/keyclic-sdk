// @dart=2.10
part of keyclic_sdk_api.api;

class InternalServiceEmbedded {
  InternalServiceEmbedded({
    this.manager,
  });

  factory InternalServiceEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceEmbedded(
      manager: Member.fromJson(json['manager']),
    );
  }

  Member manager;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceEmbedded &&
        runtimeType == other.runtimeType &&
        manager == other.manager;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= manager?.hashCode ?? 0;

    return hashCode;
  }

  static List<InternalServiceEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InternalServiceEmbedded.fromJson(value))
            ?.toList() ??
        <InternalServiceEmbedded>[];
  }

  static Map<String, InternalServiceEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, InternalServiceEmbedded>((String key, dynamic value) {
          return MapEntry(key, InternalServiceEmbedded.fromJson(value));
        }) ??
        <String, InternalServiceEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (manager != null) 'manager': manager.toJson(),
    };
  }

  @override
  String toString() {
    return 'InternalServiceEmbedded[manager=$manager, ]';
  }
}
