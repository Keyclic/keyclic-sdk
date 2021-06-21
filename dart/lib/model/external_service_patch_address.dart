// @dart=2.10
part of keyclic_sdk_api.api;

class ExternalServicePatchAddress {
  ExternalServicePatchAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  factory ExternalServicePatchAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServicePatchAddress(
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

    return other is ExternalServicePatchAddress &&
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

  static List<ExternalServicePatchAddress> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => ExternalServicePatchAddress.fromJson(value))
            ?.toList() ??
        <ExternalServicePatchAddress>[];
  }

  static Map<String, ExternalServicePatchAddress> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ExternalServicePatchAddress>(
            (String key, dynamic value) {
          return MapEntry(key, ExternalServicePatchAddress.fromJson(value));
        }) ??
        <String, ExternalServicePatchAddress>{};
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
    return 'ExternalServicePatchAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress, ]';
  }
}
