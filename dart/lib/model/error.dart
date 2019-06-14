part of keyclic_sdk_api.api;

class Error {
  Error({
    this.message,
    this.total,
    this.embedded,
  });

  Error.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    message = json['message'];
    total = json['total'];
    embedded = ErrorEmbedded.fromJson(json['_embedded']);
  }

  String message;

  int total;

  ErrorEmbedded embedded;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Error && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'total': total,
      '_embedded': embedded,
    };
  }

  @override
  String toString() {
    return 'Error[message=$message, total=$total, embedded=$embedded, ]';
  }

  static List<Error> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Error>()
        : json.map((value) => Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Error>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Error.fromJson(value));
    }
    return map;
  }
}
