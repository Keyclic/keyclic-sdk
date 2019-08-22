part of keyclic_sdk_api.api;

class Webhook {
  Webhook({
    this.links,
    this.enabled,
    this.event,
    this.id,
    this.payloadUrl,
    this.type,
  });

  Webhook.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = WebhookLinks.fromJson(json['_links']);
    enabled = json['enabled'];
    event = json['event'];
    id = json['id'];
    payloadUrl = json['payloadUrl'];
    type = json['type'];
  }

  WebhookLinks links;

  bool enabled;

  String event;

  String id;

  String payloadUrl;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Webhook &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        enabled == other.enabled &&
        event == other.event &&
        id == other.id &&
        payloadUrl == other.payloadUrl &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      links.hashCode ^
      enabled.hashCode ^
      event.hashCode ^
      id.hashCode ^
      payloadUrl.hashCode ^
      type.hashCode;

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
      'enabled': enabled,
      'event': event,
      'id': id,
      'payloadUrl': payloadUrl,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Webhook[links=$links, enabled=$enabled, event=$event, id=$id, payloadUrl=$payloadUrl, type=$type, ]';
  }
}
