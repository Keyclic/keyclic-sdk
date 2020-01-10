part of keyclic_sdk_api.api;

class Error {
  Error({
    this.message,
    this.total,
    this.embedded,
  });

  factory Error.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Error(
      message: json['message'],
      total: json['total'],
      embedded: ErrorEmbedded.fromJson(json['_embedded']),
    );
  }

  String message;

  int total;

  ErrorEmbedded embedded;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Error &&
        runtimeType == other.runtimeType &&
        message == other.message &&
        total == other.total &&
        embedded == other.embedded;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= message?.hashCode ?? 0;
    hashCode ^= total?.hashCode ?? 0;
    hashCode ^= embedded?.hashCode ?? 0;

    return hashCode;
  }

  static List<Error> listFromJson(List<dynamic> json) {
    return json == null
        ? <Error>[]
        : json.map((dynamic value) => Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Error>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Error.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (message != null) 'message': message,
      if (total != null) 'total': total,
      if (embedded != null) '_embedded': embedded,
    };
  }

  @override
  String toString() {
    return 'Error[message=$message, total=$total, embedded=$embedded, ]';
  }
}
