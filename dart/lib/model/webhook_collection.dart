part of keyclic_sdk_api.api;

class WebhookCollection {
  WebhookCollection();

  WebhookCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Webhook.listFromJson(json['items']);
  }

  List<Webhook> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'WebhookCollection[items=$items, ]';
  }

  static List<WebhookCollection> listFromJson(List<dynamic> json) {
    return json == null ? List<WebhookCollection>() : json.map((value) => WebhookCollection.fromJson(value)).toList();
  }

  static Map<String, WebhookCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebhookCollection.fromJson(value));
    }
    return map;
  }
}
