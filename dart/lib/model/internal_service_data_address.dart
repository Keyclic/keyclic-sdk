// @dart=2.10
part of keyclic_sdk_api.api;

class InternalServiceDataAddress {
  InternalServiceDataAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  factory InternalServiceDataAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceDataAddress(
      locality: json['locality'],
      postalCode: json['postalCode'],
      streetAddress: json['streetAddress'],
    );
  }

  String locality;

  num postalCode;

  String streetAddress;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceDataAddress &&
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

  static List<InternalServiceDataAddress> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => InternalServiceDataAddress.fromJson(value))
            ?.toList() ??
        <InternalServiceDataAddress>[];
  }

  static Map<String, InternalServiceDataAddress> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServiceDataAddress>(
            (String key, dynamic value) {
          return MapEntry(key, InternalServiceDataAddress.fromJson(value));
        }) ??
        <String, InternalServiceDataAddress>{};
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
    return 'InternalServiceDataAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress, ]';
  }
}
