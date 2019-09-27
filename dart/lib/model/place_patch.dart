part of keyclic_sdk_api.api;

class PlacePatch {
  PlacePatch({
    this.branchCode,
    this.description,
    this.name,
  });

  PlacePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    branchCode = json['branchCode'];
    description = json['description'];
    name = json['name'];
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
    return json == null
        ? <PlacePatch>[]
        : json.map((dynamic value) => PlacePatch.fromJson(value)).toList();
  }

  static Map<String, PlacePatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlacePatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = PlacePatch.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'branchCode': branchCode,
      'description': description,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'PlacePatch[branchCode=$branchCode, description=$description, name=$name, ]';
  }
}
