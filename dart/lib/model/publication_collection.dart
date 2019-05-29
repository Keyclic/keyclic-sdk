part of keyclic_sdk_api.api;

class PublicationCollection {
  PublicationCollection();

  PublicationCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    items = Publication.listFromJson(json['items']);
  }

  List<Publication> items;

  Map<String, dynamic> toJson() {
    return {
      'items': items,
    };
  }

  @override
  String toString() {
    return 'PublicationCollection[items=$items, ]';
  }

  static List<PublicationCollection> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PublicationCollection>()
        : json.map((value) => PublicationCollection.fromJson(value)).toList();
  }

  static Map<String, PublicationCollection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, PublicationCollection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PublicationCollection.fromJson(value));
    }
    return map;
  }
}
