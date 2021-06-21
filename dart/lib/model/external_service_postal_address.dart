// @dart=2.10
part of keyclic_sdk_api.api;

class ExternalServicePostalAddress {
  ExternalServicePostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  factory ExternalServicePostalAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServicePostalAddress(
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

    return other is ExternalServicePostalAddress &&
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

  static List<ExternalServicePostalAddress> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => ExternalServicePostalAddress.fromJson(value))
            ?.toList() ??
        <ExternalServicePostalAddress>[];
  }

  static Map<String, ExternalServicePostalAddress> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ExternalServicePostalAddress>(
            (String key, dynamic value) {
          return MapEntry(key, ExternalServicePostalAddress.fromJson(value));
        }) ??
        <String, ExternalServicePostalAddress>{};
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
    return 'ExternalServicePostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress, ]';
  }
}
