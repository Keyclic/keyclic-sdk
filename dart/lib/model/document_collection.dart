part of keyclic_sdk_api.api;

class DocumentCollection {
  DocumentCollection({
    this.items,
  });

  factory DocumentCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentCollection(
      items: Document.listFromJson(json['items']),
    );
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
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Document element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<DocumentCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DocumentCollection.fromJson(value))
            ?.toList() ??
        <DocumentCollection>[];
  }

  static Map<String, DocumentCollection> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DocumentCollection>((String key, dynamic value) {
          return MapEntry(key, DocumentCollection.fromJson(value));
        }) ??
        <String, DocumentCollection>{};
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
