part of keyclic_sdk_api.api;

class PlaceData {
  PlaceData({
    this.name,
    this.branchCode,
    this.polygon,
    this.organization,
  });

  factory PlaceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceData(
      name: json['name'],
      branchCode: json['branchCode'],
      polygon: json['polygon'],
      organization: json['organization'],
    );
  }

  String name;

  String branchCode;

  String polygon;

  String organization;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceData &&
        runtimeType == other.runtimeType &&
        name == other.name &&
        branchCode == other.branchCode &&
        polygon == other.polygon &&
        organization == other.organization;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= branchCode?.hashCode ?? 0;
    hashCode ^= polygon?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceData> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => PlaceData.fromJson(value))?.toList() ??
        <PlaceData>[];
  }

  static Map<String, PlaceData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlaceData>((String key, dynamic value) {
          return MapEntry(key, PlaceData.fromJson(value));
        }) ??
        <String, PlaceData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'branchCode': branchCode,
      'polygon': polygon,
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'PlaceData[name=$name, branchCode=$branchCode, polygon=$polygon, organization=$organization, ]';
  }
}
