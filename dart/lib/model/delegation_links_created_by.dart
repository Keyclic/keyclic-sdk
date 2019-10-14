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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksCreatedBy &&
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

  static List<DelegationLinksCreatedBy> listFromJson(List<dynamic> json) {
    return json == null
        ? <DelegationLinksCreatedBy>[]
        : json
            .map((dynamic value) => DelegationLinksCreatedBy.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksCreatedBy[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
