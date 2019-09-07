part of keyclic_sdk_api.api;

class WebhookData {
  WebhookData({
    this.event,
    this.organization,
    this.payloadUrl,
  });

  WebhookData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    event = json['event'];
    organization = json['organization'];
    payloadUrl = json['payloadUrl'];
  }

  /// enum eventEnum {  operationCreated,  operationRemoved,  operationStateChanged,  reportCreated,  reportStateChanged,  };
  String event;

  String organization;

  String payloadUrl;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookData &&
        runtimeType == other.runtimeType &&
        event == other.event &&
        organization == other.organization &&
        payloadUrl == other.payloadUrl;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^ event.hashCode ^ organization.hashCode ^ payloadUrl.hashCode;

  static List<WebhookData> listFromJson(List<dynamic> json) {
    return json == null
        ? <WebhookData>[]
        : json.map((value) => WebhookData.fromJson(value)).toList();
  }

  static Map<String, WebhookData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookData.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'event': event,
      'organization': organization,
      'payloadUrl': payloadUrl,
    };
  }

  @override
  String toString() {
    return 'WebhookData[event=$event, organization=$organization, payloadUrl=$payloadUrl, ]';
  }
}
