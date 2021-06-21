// @dart=2.10
part of keyclic_sdk_api.api;

class SignerLinksSelfIriTemplate {
  SignerLinksSelfIriTemplate({
    this.mapping,
  });

  factory SignerLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinksSelfIriTemplate(
      mapping: SignerLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  SignerLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksSelfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignerLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <SignerLinksSelfIriTemplate>[];
  }

  static Map<String, SignerLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, SignerLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, SignerLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, SignerLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'SignerLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
