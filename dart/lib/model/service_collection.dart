part of keyclic_sdk_api.api;

class ServiceCollection {
  ServiceCollection({
    this.items,
  });

  ServiceCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Service.listFromJson(json['items']);
  }

  List<Service> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'ServiceCollection[items=$items, ]';
  }

  static List<ServiceCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ServiceCollection>()
        : json.map((value) => ServiceCollection.fromJson(value)).toList();
  }

  static Map<String, ServiceCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ServiceCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ServiceCollection.fromJson(value));
    }
    return map;
  }
}
