part of keyclic_sdk_api.api;

class BusinessActivityCollection {
  BusinessActivityCollection({
    this.items,
  });

  BusinessActivityCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = BusinessActivity.listFromJson(json['items']);
  }

  List<BusinessActivity> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityCollection[items=$items, ]';
  }

  static List<BusinessActivityCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<BusinessActivityCollection>()
        : json
            .map((value) => BusinessActivityCollection.fromJson(value))
            .toList();
  }

  static Map<String, BusinessActivityCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityCollection.fromJson(value));
    }
    return map;
  }
}
