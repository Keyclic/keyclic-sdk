part of keyclic_sdk_api.api;

class FileCollection {
  FileCollection({
    this.items,
  });

  factory FileCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FileCollection(
      items: File_.listFromJson(json['items']),
    );
  }

  List<File_> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FileCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((File_ element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<FileCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FileCollection.fromJson(value))
            ?.toList() ??
        <FileCollection>[];
  }

  static Map<String, FileCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, FileCollection>((String key, dynamic value) {
          return MapEntry(key, FileCollection.fromJson(value));
        }) ??
        <String, FileCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'FileCollection[items=$items, ]';
  }
}
