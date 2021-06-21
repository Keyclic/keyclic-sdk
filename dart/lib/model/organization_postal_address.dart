// @dart=2.10
part of keyclic_sdk_api.api;

class OrganizationPostalAddress {
  OrganizationPostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  factory OrganizationPostalAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationPostalAddress(
      locality: json['locality'],
      postalCode: json['postalCode'],
      streetAddress: json['streetAddress'],
    );
  }

  String locality;

  int postalCode;

  String streetAddress;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationPostalAddress &&
        runtimeType == other.runtimeType &&
        locality == other.locality &&
        postalCode == other.postalCode &&
        streetAddress == other.streetAddress;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= locality?.hashCode ?? 0;
    hashCode ^= postalCode?.hashCode ?? 0;
    hashCode ^= streetAddress?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationPostalAddress> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OrganizationPostalAddress.fromJson(value))
            ?.toList() ??
        <OrganizationPostalAddress>[];
  }

  static Map<String, OrganizationPostalAddress> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationPostalAddress>(
            (String key, dynamic value) {
          return MapEntry(key, OrganizationPostalAddress.fromJson(value));
        }) ??
        <String, OrganizationPostalAddress>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (locality != null) 'locality': locality,
      if (postalCode != null) 'postalCode': postalCode,
      if (streetAddress != null) 'streetAddress': streetAddress,
    };
  }

  @override
  String toString() {
    return 'OrganizationPostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress, ]';
  }
}
