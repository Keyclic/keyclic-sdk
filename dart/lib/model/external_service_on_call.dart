part of keyclic_sdk_api.api;

class ExternalServiceOnCall {
  ExternalServiceOnCall({
    this.description,
    this.name,
  });

  factory ExternalServiceOnCall.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceOnCall(
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

    return other is ExternalServiceOnCall &&
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

  static List<ExternalServiceOnCall> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ExternalServiceOnCall.fromJson(value))
            ?.toList() ??
        <ExternalServiceOnCall>[];
  }

  static Map<String, ExternalServiceOnCall> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ExternalServiceOnCall>((String key, dynamic value) {
          return MapEntry(key, ExternalServiceOnCall.fromJson(value));
        }) ??
        <String, ExternalServiceOnCall>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'ExternalServiceOnCall[description=$description, name=$name, ]';
  }
}
