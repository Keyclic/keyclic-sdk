part of keyclic_sdk_api.api;

class ServiceOnCall {
  ServiceOnCall({
    this.description,
    this.name,
  });

  factory ServiceOnCall.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ServiceOnCall(
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

    return other is ServiceOnCall &&
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

  static List<ServiceOnCall> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ServiceOnCall.fromJson(value))
            ?.toList() ??
        <ServiceOnCall>[];
  }

  static Map<String, ServiceOnCall> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ServiceOnCall>((String key, dynamic value) {
          return MapEntry(key, ServiceOnCall.fromJson(value));
        }) ??
        <String, ServiceOnCall>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'ServiceOnCall[description=$description, name=$name, ]';
  }
}
