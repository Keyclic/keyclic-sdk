part of keyclic_sdk_api.api;

class WebhookCollection {
  WebhookCollection({
    this.items,
  });

  factory WebhookCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return WebhookCollection(
      items: Webhook.listFromJson(json['items']),
    );
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
  int get hashCode {
    int hashCode = 0;

    if (items is List && items.isNotEmpty) {
      hashCode ^= items
          .map((Webhook element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    return hashCode;
  }

  static List<WebhookCollection> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => WebhookCollection.fromJson(value))
            ?.toList() ??
        <WebhookCollection>[];
  }

  static Map<String, WebhookCollection> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, WebhookCollection>((String key, dynamic value) {
          return MapEntry(key, WebhookCollection.fromJson(value));
        }) ??
        <String, WebhookCollection>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (items != null) 'items': items,
    };
  }

  @override
  String toString() {
    return 'WebhookCollection[items=$items, ]';
  }
}
