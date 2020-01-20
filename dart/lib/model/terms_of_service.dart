part of keyclic_sdk_api.api;

class TermsOfService {
  TermsOfService({
    this.content,
  });

  factory TermsOfService.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return TermsOfService(
      content: json['content'],
    );
  }

  String content;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TermsOfService &&
        runtimeType == other.runtimeType &&
        content == other.content;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= content?.hashCode ?? 0;

    return hashCode;
  }

  static List<TermsOfService> listFromJson(List<dynamic> json) {
    return json == null
        ? <TermsOfService>[]
        : json.map((dynamic value) => TermsOfService.fromJson(value)).toList();
  }

  static Map<String, TermsOfService> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TermsOfService>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = TermsOfService.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (content != null) 'content': content,
    };
  }

  @override
  String toString() {
    return 'TermsOfService[content=$content, ]';
  }
}
