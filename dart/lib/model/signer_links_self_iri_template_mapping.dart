// @dart=2.10
part of keyclic_sdk_api.api;

class SignerLinksSelfIriTemplateMapping {
  SignerLinksSelfIriTemplateMapping({
    this.signer,
  });

  factory SignerLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinksSelfIriTemplateMapping(
      signer: json['signer'],
    );
  }

  String signer;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        signer == other.signer;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= signer?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                SignerLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <SignerLinksSelfIriTemplateMapping>[];
  }

  static Map<String, SignerLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, SignerLinksSelfIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, SignerLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, SignerLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (signer != null) 'signer': signer,
    };
  }

  @override
  String toString() {
    return 'SignerLinksSelfIriTemplateMapping[signer=$signer, ]';
  }
}
