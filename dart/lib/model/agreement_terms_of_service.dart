part of keyclic_sdk_api.api;

class AgreementTermsOfService {
  AgreementTermsOfService({
    this.content,
  });

  factory AgreementTermsOfService.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AgreementTermsOfService(
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

    return other is AgreementTermsOfService &&
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

  static List<AgreementTermsOfService> listFromJson(List<dynamic> json) {
    return json == null
        ? <AgreementTermsOfService>[]
        : json
            .map((dynamic value) => AgreementTermsOfService.fromJson(value))
            .toList();
  }

  static Map<String, AgreementTermsOfService> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, AgreementTermsOfService>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = AgreementTermsOfService.fromJson(value));
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
    return 'AgreementTermsOfService[content=$content, ]';
  }
}
