part of keyclic_sdk_api.api;

class Member {
  Member({
    this.roles,
    this.id,
    this.createdAt,
    this.type,
    this.links,
    this.embedded,
  });

  Member.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    roles = (json['roles'] as List)?.map((item) => item as String)?.toList();
    id = json['id'];
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    type = json['type'];
    links = MemberLinks.fromJson(json['_links']);
    embedded = MemberEmbedded.fromJson(json['_embedded']);
  }

  List<String> roles;

  String id;

  DateTime createdAt;

  String type;

  MemberLinks links;

  MemberEmbedded embedded;

  Map<String, dynamic> toJson() {
    return {
      'roles': roles,
      'id': id,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'type': type,
      '_links': links,
      '_embedded': embedded,
    };
  }

  @override
  String toString() {
    return 'Member[roles=$roles, id=$id, createdAt=$createdAt, type=$type, links=$links, embedded=$embedded, ]';
  }

  static List<Member> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Member>()
        : json.map((value) => Member.fromJson(value)).toList();
  }

  static Map<String, Member> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Member>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Member.fromJson(value));
    }
    return map;
  }
}
