part of keyclic_sdk_api.api;

class WebhookPatch {
  WebhookPatch({
    this.event,
    this.payloadUrl,
  });

  factory WebhookPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WebhookPatch(
      event: json['event'],
      payloadUrl: json['payloadUrl'],
    );
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

    hashCode ^= event?.hashCode ?? 0;
    hashCode ^= payloadUrl?.hashCode ?? 0;

    return hashCode;
  }

  static List<WebhookPatch> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WebhookPatch.fromJson(value))
            ?.toList() ??
        <WebhookPatch>[];
  }

  static Map<String, WebhookPatch> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, WebhookPatch>((String key, dynamic value) {
          return MapEntry(key, WebhookPatch.fromJson(value));
        }) ??
        <String, WebhookPatch>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (event != null) 'event': event,
      if (payloadUrl != null) 'payloadUrl': payloadUrl,
    };
  }

  @override
  String toString() {
    return 'WebhookPatch[event=$event, payloadUrl=$payloadUrl, ]';
  }
}
