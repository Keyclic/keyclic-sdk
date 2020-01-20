part of keyclic_sdk_api.api;

class Reference {
  Reference({
    this.prefix,
  });

  factory Reference.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Reference(
      prefix: json['prefix'],
    );
  }

  String prefix;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Reference &&
        runtimeType == other.runtimeType &&
        prefix == other.prefix;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= prefix?.hashCode ?? 0;

    return hashCode;
  }

  static List<Reference> listFromJson(List<dynamic> json) {
    return json == null
        ? <Reference>[]
        : json.map((dynamic value) => Reference.fromJson(value)).toList();
  }

  static Map<String, Reference> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Reference>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Reference.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (prefix != null) 'prefix': prefix,
    };
  }

  @override
  String toString() {
    return 'Reference[prefix=$prefix, ]';
  }
}
