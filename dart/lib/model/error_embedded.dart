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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ErrorEmbedded &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(errors, other.errors);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (errors is List && errors.isNotEmpty) {
      hashCode ^= errors
          .map((Error element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<ErrorEmbedded> listFromJson(List<dynamic> json) {
    return json == null
        ? <ErrorEmbedded>[]
        : json.map((dynamic value) => ErrorEmbedded.fromJson(value)).toList();
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
      if (errors != null) 'errors': errors,
    };
  }

  @override
  String toString() {
    return 'ErrorEmbedded[errors=$errors, ]';
  }
}
