part of keyclic_sdk_api.api;

class Webhook {
  Webhook({
    this.links,
    this.createdAt,
    this.enabled,
    this.event,
    this.id,
    this.payloadUrl,
    this.type,
    this.updatedAt,
  });

  factory Webhook.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Webhook(
      links: WebhookLinks.fromJson(json['_links']),
      createdAt: createdAt,
      enabled: json['enabled'],
      event: json['event'],
      id: json['id'],
      payloadUrl: json['payloadUrl'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  WebhookLinks links;

  DateTime createdAt;

  bool enabled;

  String event;

  String id;

  String payloadUrl;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Webhook &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        enabled == other.enabled &&
        event == other.event &&
        id == other.id &&
        payloadUrl == other.payloadUrl &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= enabled?.hashCode ?? 0;
    hashCode ^= event?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= payloadUrl?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Webhook> listFromJson(List<dynamic> json) {
    return json == null
        ? <Webhook>[]
        : json.map((dynamic value) => Webhook.fromJson(value)).toList();
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
      if (links != null) '_links': links,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (enabled != null) 'enabled': enabled,
      if (event != null) 'event': event,
      if (id != null) 'id': id,
      if (payloadUrl != null) 'payloadUrl': payloadUrl,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Webhook[links=$links, createdAt=$createdAt, enabled=$enabled, event=$event, id=$id, payloadUrl=$payloadUrl, type=$type, updatedAt=$updatedAt, ]';
  }
}
