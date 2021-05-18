part of keyclic_sdk_api.api;

class SignerLinksSelf {
  SignerLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory SignerLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SignerLinksSelf(
      href: json['href'],
      iriTemplate: SignerLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given signer. */
  String href;

  SignerLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SignerLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<SignerLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => SignerLinksSelf.fromJson(value))
            ?.toList() ??
        <SignerLinksSelf>[];
  }

  static Map<String, SignerLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, SignerLinksSelf>((String key, dynamic value) {
          return MapEntry(key, SignerLinksSelf.fromJson(value));
        }) ??
        <String, SignerLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'SignerLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
