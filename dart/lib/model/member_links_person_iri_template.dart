part of keyclic_sdk_api.api;

class MemberLinksPersonIriTemplate {
  MemberLinksPersonIriTemplate({
    this.mapping,
  });

  MemberLinksPersonIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksPersonIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<MemberLinksPersonIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MemberLinksPersonIriTemplate>()
        : json
            .map((value) => MemberLinksPersonIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, MemberLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, MemberLinksPersonIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinksPersonIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'MemberLinksPersonIriTemplate[mapping=$mapping, ]';
  }
}
