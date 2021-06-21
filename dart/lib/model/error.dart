// @dart=2.10
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
    return json?.map((dynamic value) => Error.fromJson(value))?.toList() ??
        <Error>[];
  }

  static Map<String, Error> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Error>((String key, dynamic value) {
          return MapEntry(key, Error.fromJson(value));
        }) ??
        <String, Error>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (message != null) 'message': message,
      if (total != null) 'total': total,
      if (embedded != null) '_embedded': embedded.toJson(),
    };
  }

  @override
  String toString() {
    return 'Error[message=$message, total=$total, embedded=$embedded, ]';
  }
}
