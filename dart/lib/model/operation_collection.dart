part of keyclic_sdk_api.api;

class OperationCollection {
  OperationCollection({
    this.items,
  });

  OperationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Operation.listFromJson(json['items']);
  }

  List<Operation> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationCollection && runtimeType == other.runtimeType;
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
    return 'OperationCollection[items=$items, ]';
  }

  static List<OperationCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationCollection>()
        : json.map((value) => OperationCollection.fromJson(value)).toList();
  }

  static Map<String, OperationCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationCollection.fromJson(value));
    }
    return map;
  }
}