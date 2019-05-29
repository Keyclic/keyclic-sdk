part of keyclic_sdk_api.api;

class MemberCollection {
  MemberCollection();

  MemberCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Member.listFromJson(json['items']);
  }

  List<Member> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'MemberCollection[items=$items, ]';
  }

  static List<MemberCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MemberCollection>()
        : json.map((value) => MemberCollection.fromJson(value)).toList();
  }

  static Map<String, MemberCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberCollection.fromJson(value));
    }
    return map;
  }
}
