part of keyclic_sdk_api.api;

class OperationCollection {
  OperationCollection();

  OperationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Operation.listFromJson(json['items']);
  }

  List<Operation> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'OperationCollection[items=$items, ]';
  }

  static List<OperationCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<OperationCollection>() : json.map((value) => OperationCollection.fromJson(value)).toList();
  }

  static Map<String, OperationCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperationCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OperationCollection.fromJson(value));
    }
    return map;
  }
}
