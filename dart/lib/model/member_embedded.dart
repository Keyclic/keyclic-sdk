part of keyclic_sdk_api.api;

class MemberEmbedded {
  MemberEmbedded();

  MemberEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    availableRoles = (json['availableRoles'] as List)?.map((item) => item as String)?.toList();
  }

  List<String> availableRoles;

  Map<String, dynamic> toJson() {
    return {
      'availableRoles': availableRoles,
    };
  }

  @override
  String toString() {
    return 'MemberEmbedded[availableRoles=$availableRoles, ]';
  }

  static List<MemberEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberEmbedded>() : json.map((value) => MemberEmbedded.fromJson(value)).toList();
  }

  static Map<String, MemberEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberEmbedded.fromJson(value));
    }
    return map;
  }
}
