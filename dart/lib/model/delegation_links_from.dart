part of keyclic_sdk_api.api;

class DelegationLinksFrom {
  DelegationLinksFrom({
    this.href,
    this.iriTemplate,
  });

  DelegationLinksFrom.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = DelegationLinksFromIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the from associated to the given delegation. */
  String href;

  DelegationLinksFromIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksFrom &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<DelegationLinksFrom> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationLinksFrom>[]
        : json.map((value) => DelegationLinksFrom.fromJson(value)).toList();
  }

  static Map<String, DelegationLinksFrom> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksFrom>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksFrom.fromJson(value));
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
    return 'DelegationLinksFrom[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
