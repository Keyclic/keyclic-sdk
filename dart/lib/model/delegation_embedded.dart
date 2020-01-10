part of keyclic_sdk_api.api;

class DelegationEmbedded {
  DelegationEmbedded({
    this.stateTransitions,
  });

  factory DelegationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationEmbedded(
      stateTransitions: json['stateTransitions'] is List
          ? List<String>.from(json['stateTransitions'])
          : null,
    );
  }

  List<String> stateTransitions;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered()
            .equals(stateTransitions, other.stateTransitions);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (stateTransitions is List && stateTransitions.isNotEmpty) {
      hashCode ^= stateTransitions
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<DelegationEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationEmbedded>[]
        : json
            .map((dynamic value) => DelegationEmbedded.fromJson(value))
            .toList();
  }

  static Map<String, DelegationEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationEmbedded.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (stateTransitions != null) 'stateTransitions': stateTransitions,
    };
  }

  @override
  String toString() {
    return 'DelegationEmbedded[stateTransitions=$stateTransitions, ]';
  }
}
