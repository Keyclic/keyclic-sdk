part of keyclic_sdk_api.api;

class OperationEmbeddedDuration {
  OperationEmbeddedDuration({
    this.seconds,
  });

  factory OperationEmbeddedDuration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationEmbeddedDuration(
      seconds: json['seconds'],
    );
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
    return json
            ?.map((dynamic value) => OperationEmbeddedDuration.fromJson(value))
            ?.toList() ??
        <OperationEmbeddedDuration>[];
  }

  static Map<String, OperationEmbeddedDuration> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationEmbeddedDuration>(
            (String key, dynamic value) {
          return MapEntry(key, OperationEmbeddedDuration.fromJson(value));
        }) ??
        <String, OperationEmbeddedDuration>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (seconds != null) 'seconds': seconds,
    };
  }

  @override
  String toString() {
    return 'OperationEmbeddedDuration[seconds=$seconds, ]';
  }
}
