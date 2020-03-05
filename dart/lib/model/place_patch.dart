part of keyclic_sdk_api.api;

class PlacePatch {
  PlacePatch({
    this.branchCode,
    this.description,
    this.name,
  });

  factory PlacePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlacePatch(
      branchCode: json['branchCode'],
      description: json['description'],
      name: json['name'],
    );
  }

  String branchCode;

  String description;

  String name;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlacePatch &&
        runtimeType == other.runtimeType &&
        branchCode == other.branchCode &&
        description == other.description &&
        name == other.name;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= branchCode?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlacePatch> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => PlacePatch.fromJson(value))?.toList() ??
        <PlacePatch>[];
  }

  static Map<String, PlacePatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, PlacePatch.fromJson(value));
        }) ??
        <String, PlacePatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (branchCode != null) 'branchCode': branchCode,
      if (description != null) 'description': description,
      if (name != null) 'name': name,
    };
  }

  @override
  String toString() {
    return 'PlacePatch[branchCode=$branchCode, description=$description, name=$name, ]';
  }
}
