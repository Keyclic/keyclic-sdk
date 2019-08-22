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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DocumentCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      items.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<DocumentCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <DocumentCollection>[]
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
