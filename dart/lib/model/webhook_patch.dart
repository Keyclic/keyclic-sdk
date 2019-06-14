part of keyclic_sdk_api.api;

class WebhookPatch {
  WebhookPatch({
    this.event,
    this.payloadUrl,
  });

  WebhookPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    event = json['event'];
    payloadUrl = json['payloadUrl'];
  }

  String event;

  String payloadUrl;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookPatch && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'event': event,
      'payloadUrl': payloadUrl,
    };
  }

  @override
  String toString() {
    return 'WebhookPatch[event=$event, payloadUrl=$payloadUrl, ]';
  }

  static List<WebhookPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? List<WebhookPatch>()
        : json.map((value) => WebhookPatch.fromJson(value)).toList();
  }

  static Map<String, WebhookPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookPatch.fromJson(value));
    }
    return map;
  }
}