part of keyclic_sdk_api.api;

class WebhookCollection {
  WebhookCollection({
    this.items,
  });

  WebhookCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Webhook.listFromJson(json['items']);
  }

  List<Webhook> items;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookCollection && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
    return json == null
        ? List<WebhookCollection>()
        : json.map((value) => WebhookCollection.fromJson(value)).toList();
  }

  static Map<String, WebhookCollection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = WebhookCollection.fromJson(value));
    }
    return map;
  }
}
