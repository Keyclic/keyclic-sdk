// @dart=2.10
part of keyclic_sdk_api.api;

class InternalServicePostalAddress {
  InternalServicePostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  factory InternalServicePostalAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServicePostalAddress(
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

    return other is InternalServicePostalAddress &&
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

  static List<InternalServicePostalAddress> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => InternalServicePostalAddress.fromJson(value))
            ?.toList() ??
        <InternalServicePostalAddress>[];
  }

  static Map<String, InternalServicePostalAddress> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServicePostalAddress>(
            (String key, dynamic value) {
          return MapEntry(key, InternalServicePostalAddress.fromJson(value));
        }) ??
        <String, InternalServicePostalAddress>{};
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
    return 'InternalServicePostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress, ]';
  }
}
