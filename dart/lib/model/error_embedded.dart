part of keyclic_sdk_api.api;

class ErrorEmbedded {
  ErrorEmbedded();

  ErrorEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    errors = Error.listFromJson(json['errors']);
  }

  List<Error> errors;

  Map<String, dynamic> toJson() {
    return {
      'errors': errors,
    };
  }

  @override
  String toString() {
    return 'ErrorEmbedded[errors=$errors, ]';
  }

  static List<ErrorEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<ErrorEmbedded>() : json.map((value) => ErrorEmbedded.fromJson(value)).toList();
  }

  static Map<String, ErrorEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ErrorEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ErrorEmbedded.fromJson(value));
    }
    return map;
  }
}
