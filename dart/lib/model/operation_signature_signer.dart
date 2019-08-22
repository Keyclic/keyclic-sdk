part of keyclic_sdk_api.api;

class OperationSignatureSigner {
  OperationSignatureSigner({
    this.familyName,
    this.givenName,
  });

  OperationSignatureSigner.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    familyName = json['familyName'];
    givenName = json['givenName'];
  }

  String familyName;

  String givenName;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationSignatureSigner &&
        runtimeType == other.runtimeType &&
        familyName == other.familyName &&
        givenName == other.givenName;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ familyName.hashCode ^ givenName.hashCode;

  static List<OperationSignatureSigner> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationSignatureSigner>[]
        : json
            .map((value) => OperationSignatureSigner.fromJson(value))
            .toList();
  }

  static Map<String, OperationSignatureSigner> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationSignatureSigner>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationSignatureSigner.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'familyName': familyName,
      'givenName': givenName,
    };
  }

  @override
  String toString() {
    return 'OperationSignatureSigner[familyName=$familyName, givenName=$givenName, ]';
  }
}
