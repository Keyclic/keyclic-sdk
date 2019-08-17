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
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksTo && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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

  static List<DelegationLinksTo> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationLinksTo>()
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
}
