part of keyclic_sdk_api.api;

class MemberCollection {
  MemberCollection({
    this.items,
  });

  MemberCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Member.listFromJson(json['items']);
  }

  List<Member> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MemberCollection && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'MemberCollection[items=$items, ]';
  }
}
