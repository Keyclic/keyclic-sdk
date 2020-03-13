part of keyclic_sdk_api.api;

class Operation {
  Operation({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.id,
    this.identificationNumber,
    this.name,
    this.scheduledAt,
    this.signature,
    this.state,
    this.type,
    this.updatedAt,
  });

  factory Operation.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime scheduledAt = json['scheduledAt'] == null
        ? null
        : DateTime.parse(json['scheduledAt']);
    if (scheduledAt is DateTime && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${scheduledAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Operation(
      embedded: OperationEmbedded.fromJson(json['_embedded']),
      links: OperationLinks.fromJson(json['_links']),
      createdAt: createdAt,
      description: json['description'],
      id: json['id'],
      identificationNumber: json['identificationNumber'],
      name: json['name'],
      scheduledAt: scheduledAt,
      signature: OperationSignature.fromJson(json['signature']),
      state: json['state'] is List ? List<String>.from(json['state']) : null,
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  OperationEmbedded embedded;

  OperationLinks links;

  DateTime createdAt;

  String description;

  String id;

  String identificationNumber;

  String name;

  DateTime scheduledAt;

  OperationSignature signature;

  List<String> state;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Operation &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        identificationNumber == other.identificationNumber &&
        name == other.name &&
        scheduledAt == other.scheduledAt &&
        signature == other.signature &&
        DeepCollectionEquality.unordered().equals(state, other.state) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (state is List && state.isNotEmpty) {
      hashCode ^= state
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= identificationNumber?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= scheduledAt?.hashCode ?? 0;
    hashCode ^= signature?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Operation> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Operation.fromJson(value))?.toList() ??
        <Operation>[];
  }

  static Map<String, Operation> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Operation>((String key, dynamic value) {
          return MapEntry(key, Operation.fromJson(value));
        }) ??
        <String, Operation>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded.toJson(),
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (identificationNumber != null)
        'identificationNumber': identificationNumber,
      if (name != null) 'name': name,
      if (scheduledAt != null)
        'scheduledAt': scheduledAt.toUtc().toIso8601String(),
      if (signature != null) 'signature': signature.toJson(),
      if (state != null) 'state': state,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Operation[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, id=$id, identificationNumber=$identificationNumber, name=$name, scheduledAt=$scheduledAt, signature=$signature, state=$state, type=$type, updatedAt=$updatedAt, ]';
  }
}
