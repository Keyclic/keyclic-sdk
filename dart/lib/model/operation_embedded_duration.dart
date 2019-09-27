part of keyclic_sdk_api.api;

class OperationEmbeddedDuration {
  OperationEmbeddedDuration({
    this.seconds,
  });

  OperationEmbeddedDuration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    seconds = json['seconds'];
  }

  int seconds;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationEmbeddedDuration &&
        runtimeType == other.runtimeType &&
        seconds == other.seconds;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= seconds?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationEmbeddedDuration> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationEmbeddedDuration>[]
        : json
            .map((dynamic value) => OperationEmbeddedDuration.fromJson(value))
            .toList();
  }

  static Map<String, OperationEmbeddedDuration> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationEmbeddedDuration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationEmbeddedDuration.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'seconds': seconds,
    };
  }

  @override
  String toString() {
    return 'OperationEmbeddedDuration[seconds=$seconds, ]';
  }
}
