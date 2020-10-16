part of keyclic_sdk_api.api;

class DigitalDocumentData {
  DigitalDocumentData({
    this.container,
    this.type,
  });

  factory DigitalDocumentData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentData(
      container: json['container'],
      type: json['type'],
    );
  }

  String container;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentData &&
        runtimeType == other.runtimeType &&
        container == other.container &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= container?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<DigitalDocumentData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DigitalDocumentData.fromJson(value))
            ?.toList() ??
        <DigitalDocumentData>[];
  }

  static Map<String, DigitalDocumentData> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentData>((String key, dynamic value) {
          return MapEntry(key, DigitalDocumentData.fromJson(value));
        }) ??
        <String, DigitalDocumentData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (container != null) 'container': container,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentData[container=$container, type=$type, ]';
  }
}
