part of keyclic_sdk_api.api;

class DocumentCollection {
  DocumentCollection({
    this.items,
  });

  DocumentCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Document.listFromJson(json['items']);
  }

  List<Document> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentCollection && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<DocumentCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DocumentCollection>()
        : json.map((value) => DocumentCollection.fromJson(value)).toList();
  }

  static Map<String, DocumentCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentCollection.fromJson(value));
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
    return 'DocumentCollection[items=$items, ]';
  }
}
