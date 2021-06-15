part of keyclic_sdk_api.api;

class MemberCollection {
  MemberCollection({
    this.items,
  });

  factory MemberCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberCollection(
      items: Member.listFromJson(json['items']),
    );
  }

  List<Member> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Member element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<MemberCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => MemberCollection.fromJson(value))
            ?.toList() ??
        <MemberCollection>[];
  }

  static Map<String, MemberCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, MemberCollection>((String key, dynamic value) {
          return MapEntry(key, MemberCollection.fromJson(value));
        }) ??
        <String, MemberCollection>{};
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
