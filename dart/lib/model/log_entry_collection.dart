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

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'LogEntryCollection[items=$items, ]';
  }

  static List<LogEntryCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<LogEntryCollection>()
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
}
