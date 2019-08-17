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
    if (identical(this, other)) {
      return true;
    }

    return other is Webhook &&
        runtimeType == other.runtimeType &&
        enabled == other.enabled &&
        event == other.event &&
        payloadUrl == other.payloadUrl;
  }

  @override
  int get hashCode =>
      0 ^ enabled.hashCode ^ event.hashCode ^ payloadUrl.hashCode;

  static List<Webhook> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Webhook>()
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
