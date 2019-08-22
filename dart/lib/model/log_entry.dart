part of keyclic_sdk_api.api;

class LogEntry {
  LogEntry({
    this.action,
    this.actor,
    this.data,
    this.loggedAt,
  });

  LogEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    action = json['action'];
    actor = json['actor'];
    data = (json['data'] as List)?.map((item) => item as String)?.toList();
    loggedAt =
        json['loggedAt'] == null ? null : DateTime.parse(json['loggedAt']);
    if (loggedAt is DateTime && loggedAt.isUtc == false) {
      loggedAt = DateTime.parse('${loggedAt.toIso8601String()}Z');
    }
  }

  String action;

  String actor;

  List<String> data;

  DateTime loggedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is LogEntry &&
        runtimeType == other.runtimeType &&
        action == other.action &&
        actor == other.actor &&
        DeepCollectionEquality.unordered().equals(data, other.data) &&
        loggedAt == other.loggedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      action.hashCode ^
      actor.hashCode ^
      data.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      loggedAt.hashCode;

  static List<LogEntry> listFromJson(List<dynamic> json) {
    return json == null
        ? <LogEntry>[]
        : json.map((value) => LogEntry.fromJson(value)).toList();
  }

  static Map<String, LogEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LogEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = LogEntry.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'action': action,
      'actor': actor,
      'data': data,
      'loggedAt': loggedAt == null ? '' : loggedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'LogEntry[action=$action, actor=$actor, data=$data, loggedAt=$loggedAt, ]';
  }
}
