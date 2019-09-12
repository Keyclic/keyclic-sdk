part of keyclic_sdk_api.api;

class MemberLinksSelfIriTemplateMapping {
  MemberLinksSelfIriTemplateMapping({
    this.member,
  });

  MemberLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    member = json['member'];
  }

  String member;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        member == other.member;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (member?.hashCode ?? 0);

    return hashCode;
  }

  static List<MemberLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <MemberLinksSelfIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                MemberLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, MemberLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, MemberLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinksSelfIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'member': member,
    };
  }

  @override
  String toString() {
    return 'MemberLinksSelfIriTemplateMapping[member=$member, ]';
  }
}
