part of keyclic_sdk_api.api;

class DocumentEmbedded {
  DocumentEmbedded({
    this.container,
    this.createdBy,
    this.signers,
    this.stateTransitions,
    this.type,
  });

  factory DocumentEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentEmbedded(
      container: json['container'],
      createdBy: Person.fromJson(json['createdBy']),
      signers: Signer.listFromJson(json['signers']),
      stateTransitions: json['stateTransitions'] is List
          ? List<String>.from(json['stateTransitions'])
          : null,
      type: DocumentType.fromJson(json['type']),
    );
  }

  Map<String, dynamic> container;

  Person createdBy;

  List<Signer> signers;

  List<String> stateTransitions;

  DocumentType type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentEmbedded &&
        runtimeType == other.runtimeType &&
        container == other.container &&
        createdBy == other.createdBy &&
        DeepCollectionEquality.unordered().equals(signers, other.signers) &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions) &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (signers is List && signers.isNotEmpty) {
      hashCode ^= signers
          .map((Signer element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }
    if (stateTransitions is List && stateTransitions.isNotEmpty) {
      hashCode ^= stateTransitions
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= container?.hashCode ?? 0;
    hashCode ^= createdBy?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<DocumentEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentEmbedded.fromJson(value))
            ?.toList() ??
        <DocumentEmbedded>[];
  }

  static Map<String, DocumentEmbedded> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, DocumentEmbedded>((String key, dynamic value) {
          return MapEntry(key, DocumentEmbedded.fromJson(value));
        }) ??
        <String, DocumentEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (container != null) 'container': container,
      if (createdBy != null) 'createdBy': createdBy.toJson(),
      if (signers != null) 'signers': signers,
      if (stateTransitions != null) 'stateTransitions': stateTransitions,
      if (type != null) 'type': type.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentEmbedded[container=$container, createdBy=$createdBy, signers=$signers, stateTransitions=$stateTransitions, type=$type, ]';
  }
}
