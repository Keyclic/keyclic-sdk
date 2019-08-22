part of keyclic_sdk_api.api;

class LogEntryCollection {
  LogEntryCollection({
    this.items,
  });

  LogEntryCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = LogEntry.listFromJson(json['items']);
  }

  List<LogEntry> items;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is LogEntryCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      items.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<LogEntryCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <LogEntryCollection>[]
        : json.map((value) => LogEntryCollection.fromJson(value)).toList();
  }

  static Map<String, LogEntryCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, LogEntryCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = LogEntryCollection.fromJson(value));
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
    return 'LogEntryCollection[items=$items, ]';
  }
}
