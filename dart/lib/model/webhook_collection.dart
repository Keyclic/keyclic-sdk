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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WebhookCollection &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(items, other.items);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      items.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<WebhookCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? <WebhookCollection>[]
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

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'WebhookCollection[items=$items, ]';
  }
}
