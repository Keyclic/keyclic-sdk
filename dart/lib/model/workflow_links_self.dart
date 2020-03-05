part of keyclic_sdk_api.api;

class WorkflowLinksSelf {
  WorkflowLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory WorkflowLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WorkflowLinksSelf(
      href: json['href'],
      iriTemplate: WorkflowLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given workflow. */
  String href;

  WorkflowLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WorkflowLinksSelf &&
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

  static List<WorkflowLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WorkflowLinksSelf.fromJson(value))
            ?.toList() ??
        <WorkflowLinksSelf>[];
  }

  static Map<String, WorkflowLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, WorkflowLinksSelf.fromJson(value));
        }) ??
        <String, WorkflowLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'WorkflowLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
