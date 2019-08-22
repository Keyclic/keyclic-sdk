part of keyclic_sdk_api.api;

class DelegationLinksTo {
  DelegationLinksTo({
    this.href,
    this.iriTemplate,
  });

  DelegationLinksTo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = DelegationLinksToIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the to associated to the given delegation. */
  String href;

  DelegationLinksToIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksTo &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<DelegationLinksTo> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationLinksTo>[]
        : json.map((value) => DelegationLinksTo.fromJson(value)).toList();
  }

  static Map<String, DelegationLinksTo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksTo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksTo.fromJson(value));
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
    return 'DelegationLinksTo[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
