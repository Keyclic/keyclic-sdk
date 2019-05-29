part of keyclic_sdk_api.api;

class LogEntry {
  LogEntry();

  LogEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    action = json['action'];
    loggedAt = json['loggedAt'] == null ? null : DateTime.parse(json['loggedAt']);
    if (loggedAt is DateTime && loggedAt.isUtc == false) {
      loggedAt = DateTime.parse('${loggedAt.toIso8601String()}Z');
    }
    objectId = json['objectId'];
    version = json['version'];
    data = (json['data'] as List)?.map((item) => item as String)?.toList();
  }

  String action;

  DateTime loggedAt;

  String objectId;

  String version;

  List<String> data;

  Map<String, dynamic> toJson() {
    return {
      'action': action,
      'loggedAt': loggedAt == null ? '' : loggedAt.toUtc().toIso8601String(),
      'objectId': objectId,
      'version': version,
      'data': data,
    };
  }

  @override
  String toString() {
    return 'LogEntry[action=$action, loggedAt=$loggedAt, objectId=$objectId, version=$version, data=$data, ]';
  }

  static List<LogEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<LogEntry>() : json.map((value) => LogEntry.fromJson(value)).toList();
  }

  static Map<String, LogEntry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LogEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LogEntry.fromJson(value));
    }
    return map;
  }
}
