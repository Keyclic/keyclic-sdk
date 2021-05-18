part of keyclic_sdk_api.api;

class OperationData {
  OperationData({
    this.description,
    this.identificationNumber,
    this.report,
    this.member,
    this.name,
    this.organization,
    this.scheduledAt,
  });

  factory OperationData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationData(
      description: json['description'],
      identificationNumber: json['identificationNumber'],
      report: json['report'],
      member: json['member'],
      name: json['name'],
      organization: json['organization'],
      scheduledAt: json['scheduledAt'],
    );
  }

  String description;

  String identificationNumber;

  String report;

  String member;

  String name;

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
        identificationNumber == other.identificationNumber &&
        report == other.report &&
        member == other.member &&
        name == other.name &&
        organization == other.organization &&
        scheduledAt == other.scheduledAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= report?.hashCode ?? 0;
    hashCode ^= member?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
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
      'description': description,
      'identificationNumber': identificationNumber,
      'report': report,
      'member': member,
      'name': name,
      'organization': organization,
      'scheduledAt': scheduledAt,
    };
  }

  @override
  String toString() {
    return 'OperationData[description=$description, identificationNumber=$identificationNumber, report=$report, member=$member, name=$name, organization=$organization, scheduledAt=$scheduledAt, ]';
  }
}
