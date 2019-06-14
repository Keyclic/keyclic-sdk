part of keyclic_sdk_api.api;

class DelegationLinksCreatedBy {
  DelegationLinksCreatedBy({
    this.href,
    this.iriTemplate,
  });

  DelegationLinksCreatedBy.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the createdBy associated to the given delegation. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksCreatedBy &&
        runtimeType == other.runtimeType;
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
    return 'DelegationLinksCreatedBy[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<DelegationLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationLinksCreatedBy>()
        : json
            .map((value) => DelegationLinksCreatedBy.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksCreatedBy> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksCreatedBy>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksCreatedBy.fromJson(value));
    }
    return map;
  }
}
