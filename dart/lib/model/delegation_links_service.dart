part of keyclic_sdk_api.api;

class DelegationLinksService {
  DelegationLinksService({
    this.href,
    this.iriTemplate,
  });

  factory DelegationLinksService.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksService(
      href: json['href'],
      iriTemplate:
          DelegationLinksServiceIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the service associated to the given delegation. */
  String href;

  DelegationLinksServiceIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksService &&
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

  static List<DelegationLinksService> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DelegationLinksService.fromJson(value))
            ?.toList() ??
        <DelegationLinksService>[];
  }

  static Map<String, DelegationLinksService> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, DelegationLinksService>((String key, dynamic value) {
          return MapEntry(key, DelegationLinksService.fromJson(value));
        }) ??
        <String, DelegationLinksService>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DelegationLinksService[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
