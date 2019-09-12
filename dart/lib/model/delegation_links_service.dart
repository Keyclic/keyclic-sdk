part of keyclic_sdk_api.api;

class DelegationLinksService {
  DelegationLinksService({
    this.href,
    this.iriTemplate,
  });

  DelegationLinksService.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksServiceIriTemplate.fromJson(json['iriTemplate']);
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

    hashCode ^= (href?.hashCode ?? 0);
    hashCode ^= (iriTemplate?.hashCode ?? 0);

    return hashCode;
  }

  static List<DelegationLinksService> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationLinksService>[]
        : json
            .map((dynamic value) => DelegationLinksService.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksService> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksService>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksService.fromJson(value));
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
    return 'DelegationLinksService[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
