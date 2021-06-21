// @dart=2.10
part of keyclic_sdk_api.api;

class OperationPatch {
  OperationPatch({
    this.description,
    this.identificationNumber,
    this.name,
    this.scheduledAt,
  });

  factory OperationPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime scheduledAt = json['scheduledAt'] == null
        ? null
        : DateTime.parse(json['scheduledAt']);
    if (scheduledAt is DateTime && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${scheduledAt.toIso8601String()}Z');
    }

    return OperationPatch(
      description: json['description'],
      identificationNumber: json['identificationNumber'],
      name: json['name'],
      scheduledAt: scheduledAt,
    );
  }

  String description;

  String identificationNumber;

  String name;

  DateTime scheduledAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationPatch &&
        runtimeType == other.runtimeType &&
        description == other.description &&
        identificationNumber == other.identificationNumber &&
        name == other.name &&
        scheduledAt == other.scheduledAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= scheduledAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationPatch.fromJson(value))
            ?.toList() ??
        <OperationPatch>[];
  }

  static Map<String, OperationPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, OperationPatch>((String key, dynamic value) {
          return MapEntry(key, OperationPatch.fromJson(value));
        }) ??
        <String, OperationPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (description != null) 'description': description,
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (name != null) 'name': name,
      if (scheduledAt != null)
        'scheduledAt': scheduledAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'OperationPatch[description=$description, identificationNumber=$identificationNumber, name=$name, scheduledAt=$scheduledAt, ]';
  }
}
