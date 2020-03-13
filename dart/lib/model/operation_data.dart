part of keyclic_sdk_api.api;

class OperationData {
  OperationData({
    this.description,
    this.name,
    this.identificationNumber,
    this.report,
    this.organization,
    this.scheduledAt,
  });

  factory OperationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationData(
      description: json['description'],
      name: json['name'],
      identificationNumber: json['identificationNumber'],
      report: json['report'],
      organization: json['organization'],
      scheduledAt: json['scheduledAt'],
    );
  }

  String description;

  String name;

  String identificationNumber;

  String report;

  String organization;

  String scheduledAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationData &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        name == other.name &&
        identificationNumber == other.identificationNumber &&
        report == other.report &&
        organization == other.organization &&
        scheduledAt == other.scheduledAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= report?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= scheduledAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationData> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationData.fromJson(value))
            ?.toList() ??
        <OperationData>[];
  }

  static Map<String, OperationData> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, OperationData>((String key, dynamic value) {
          return MapEntry(key, OperationData.fromJson(value));
        }) ??
        <String, OperationData>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (name != null) 'name': name,
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (report != null) 'report': report,
      if (organization != null) 'organization': organization,
      if (scheduledAt != null) 'scheduledAt': scheduledAt,
    };
  }

  @override
  String toString() {
    return 'OperationData[description=$description, name=$name, identificationNumber=$identificationNumber, report=$report, organization=$organization, scheduledAt=$scheduledAt, ]';
  }
}
