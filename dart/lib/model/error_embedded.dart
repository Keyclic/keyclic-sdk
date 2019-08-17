part of keyclic_sdk_api.api;

class ErrorEmbedded {
  ErrorEmbedded({
    this.errors,
  });

  ErrorEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    errors = Error.listFromJson(json['errors']);
  }

  List<Error> errors;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ErrorEmbedded && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ErrorEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ErrorEmbedded>()
        : json.map((value) => ErrorEmbedded.fromJson(value)).toList();
  }

  static Map<String, ErrorEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ErrorEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ErrorEmbedded.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'errors': errors,
    };
  }

  @override
  String toString() {
    return 'ErrorEmbedded[errors=$errors, ]';
  }
}
