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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookPatch &&
        runtimeType == other.runtimeType &&
        event == other.event &&
        payloadUrl == other.payloadUrl;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (event?.hashCode ?? 0);
    hashCode ^= (payloadUrl?.hashCode ?? 0);

    return hashCode;
  }

  static List<WebhookPatch> listFromJson(List<dynamic> json) {
    return json == null
        ? <WebhookPatch>[]
        : json.map((dynamic value) => WebhookPatch.fromJson(value)).toList();
  }

  static Map<String, WebhookPatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookPatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookPatch.fromJson(value));
    }

    return map;
  }

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
}
