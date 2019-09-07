part of keyclic_sdk_api.api;

class DelegationEmbedded {
  DelegationEmbedded({
    this.stateTransitions,
  });

  DelegationEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    stateTransitions = (json['stateTransitions'] as List)
        ?.map((item) => item as String)
        ?.toList();
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
  int get hashCode =>
      0 ^
      stateTransitions.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<DelegationEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationEmbedded>[]
        : json.map((value) => DelegationEmbedded.fromJson(value)).toList();
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
      'stateTransitions': stateTransitions,
    };
  }

  @override
  String toString() {
    return 'DelegationEmbedded[stateTransitions=$stateTransitions, ]';
  }
}
