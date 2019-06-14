part of keyclic_sdk_api.api;

class OrganizationCollection {
  OrganizationCollection({
    this.items,
  });

  OrganizationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Organization.listFromJson(json['items']);
  }

  List<Organization> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationCollection && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'OrganizationCollection[items=$items, ]';
  }

  static List<OrganizationCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OrganizationCollection>()
        : json.map((value) => OrganizationCollection.fromJson(value)).toList();
  }

  static Map<String, OrganizationCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationCollection.fromJson(value));
    }
    return map;
  }
}
