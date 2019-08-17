part of keyclic_sdk_api.api;

class DelegationCollection {
  DelegationCollection({
    this.items,
  });

  DelegationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Delegation.listFromJson(json['items']);
  }

  List<Delegation> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationCollection && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DelegationCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationCollection>()
        : json.map((value) => DelegationCollection.fromJson(value)).toList();
  }

  static Map<String, DelegationCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationCollection.fromJson(value));
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
    return 'DelegationCollection[items=$items, ]';
  }
}
