part of keyclic_sdk_api.api;

class Webhook {
  Webhook({
    this.enabled,
    this.event,
    this.payloadUrl,
    this.id,
    this.type,
    this.links,
  });

  Webhook.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    enabled = json['enabled'];
    event = json['event'];
    payloadUrl = json['payloadUrl'];
    id = json['id'];
    type = json['type'];
    links = WebhookLinks.fromJson(json['_links']);
  }

  bool enabled;

  String event;

  String payloadUrl;

  String id;

  String type;

  WebhookLinks links;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is Webhook &&
        runtimeType == other.runtimeType &&
        enabled == other.enabled &&
        event == other.event &&
        payloadUrl == other.payloadUrl &&
        id == other.id;
  }

  @override
  int get hashCode =>
      0 ^ enabled.hashCode ^ event.hashCode ^ payloadUrl.hashCode ^ id.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'enabled': enabled,
      'event': event,
      'payloadUrl': payloadUrl,
      'id': id,
      'type': type,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'Webhook[enabled=$enabled, event=$event, payloadUrl=$payloadUrl, id=$id, type=$type, links=$links, ]';
  }

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
}