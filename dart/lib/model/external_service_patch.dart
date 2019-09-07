part of keyclic_sdk_api.api;

class ExternalServicePatch {
  ExternalServicePatch({
    this.description,
    this.name,
  });

  ExternalServicePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    description = json['description'];
    name = json['name'];
  }

  String description;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServicePatch &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ description.hashCode ^ name.hashCode;

  static List<ExternalServicePatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <ExternalServicePatch>[]
        : json.map((value) => ExternalServicePatch.fromJson(value)).toList();
  }

  static Map<String, ExternalServicePatch> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ExternalServicePatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ExternalServicePatch.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'ExternalServicePatch[description=$description, name=$name, ]';
  }
}
