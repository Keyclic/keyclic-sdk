part of keyclic_sdk_api.api;

class DigitalDocumentEmbedded {
  DigitalDocumentEmbedded({
    this.signers,
    this.stateTransitions,
  });

  factory DigitalDocumentEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentEmbedded(
      signers: Signer.listFromJson(json['signers']),
      stateTransitions: json['stateTransitions'] is List
          ? List<String>.from(json['stateTransitions'])
          : null,
    );
  }

  List<Signer> signers;

  List<String> stateTransitions;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(signers, other.signers) &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions);
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

    return hashCode;
  }

  static List<DigitalDocumentEmbedded> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DigitalDocumentEmbedded.fromJson(value))
            ?.toList() ??
        <DigitalDocumentEmbedded>[];
  }

  static Map<String, DigitalDocumentEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, DigitalDocumentEmbedded>((String key, dynamic value) {
          return MapEntry(key, DigitalDocumentEmbedded.fromJson(value));
        }) ??
        <String, DigitalDocumentEmbedded>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (signers != null) 'signers': signers,
      if (stateTransitions != null) 'stateTransitions': stateTransitions,
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentEmbedded[signers=$signers, stateTransitions=$stateTransitions, ]';
  }
}
