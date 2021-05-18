part of keyclic_sdk_api.api;

class ServicePostalAddress {
  ServicePostalAddress({
    this.locality,
    this.postalCode,
    this.streetAddress,
  });

  factory ServicePostalAddress.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ServicePostalAddress(
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

    return other is ServicePostalAddress &&
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

  static List<ServicePostalAddress> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ServicePostalAddress.fromJson(value))
            ?.toList() ??
        <ServicePostalAddress>[];
  }

  static Map<String, ServicePostalAddress> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ServicePostalAddress>((String key, dynamic value) {
          return MapEntry(key, ServicePostalAddress.fromJson(value));
        }) ??
        <String, ServicePostalAddress>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'locality': locality,
      'postalCode': postalCode,
      'streetAddress': streetAddress,
    };
  }

  @override
  String toString() {
    return 'ServicePostalAddress[locality=$locality, postalCode=$postalCode, streetAddress=$streetAddress, ]';
  }
}
