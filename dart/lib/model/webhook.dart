part of keyclic_sdk_api.api;

class Webhook {
  Webhook({
    this.links,
    this.createdAt,
    this.enabled,
    this.event,
    this.id,
    this.payloadUrl,
    this.type,
    this.updatedAt,
  });

  Webhook.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = WebhookLinks.fromJson(json['_links']);
    createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }
    enabled = json['enabled'];
    event = json['event'];
    id = json['id'];
    payloadUrl = json['payloadUrl'];
    type = json['type'];
    updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }
  }

  WebhookLinks links;

  DateTime createdAt;

  bool enabled;

  String event;

  String id;

  String payloadUrl;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Webhook &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        enabled == other.enabled &&
        event == other.event &&
        id == other.id &&
        payloadUrl == other.payloadUrl &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      links.hashCode ^
      createdAt.hashCode ^
      enabled.hashCode ^
      event.hashCode ^
      id.hashCode ^
      payloadUrl.hashCode ^
      type.hashCode ^
      updatedAt.hashCode;

  static List<Webhook> listFromJson(List<dynamic> json) {
    return json == null
        ? <Webhook>[]
        : json.map((value) => Webhook.fromJson(value)).toList();
  }

  static Map<String, Webhook> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Webhook>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Webhook.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'enabled': enabled,
      'event': event,
      'id': id,
      'payloadUrl': payloadUrl,
      'type': type,
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Webhook[links=$links, createdAt=$createdAt, enabled=$enabled, event=$event, id=$id, payloadUrl=$payloadUrl, type=$type, updatedAt=$updatedAt, ]';
  }
}
