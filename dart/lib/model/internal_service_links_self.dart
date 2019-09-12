part of keyclic_sdk_api.api;

class InternalServiceLinksSelf {
  InternalServiceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  InternalServiceLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        InternalServiceLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given internalservice. */
  String href;

  InternalServiceLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (href?.hashCode ?? 0);
    hashCode ^= (iriTemplate?.hashCode ?? 0);

    return hashCode;
  }

  static List<InternalServiceLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <InternalServiceLinksSelf>[]
        : json
            .map((dynamic value) => InternalServiceLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, InternalServiceLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, InternalServiceLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InternalServiceLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
