part of keyclic_sdk_api.api;

class InternalServiceOnCall {
  InternalServiceOnCall({
    this.description,
    this.name,
  });

  factory InternalServiceOnCall.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceOnCall(
      description: json['description'],
      name: json['name'],
    );
  }

  String description;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceOnCall &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<InternalServiceOnCall> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InternalServiceOnCall.fromJson(value))
            ?.toList() ??
        <InternalServiceOnCall>[];
  }

  static Map<String, InternalServiceOnCall> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, InternalServiceOnCall>((String key, dynamic value) {
          return MapEntry(key, InternalServiceOnCall.fromJson(value));
        }) ??
        <String, InternalServiceOnCall>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'InternalServiceOnCall[description=$description, name=$name, ]';
  }
}
