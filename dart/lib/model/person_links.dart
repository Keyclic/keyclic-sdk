part of keyclic_sdk_api.api;

class PersonLinks {
  PersonLinks();

  PersonLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = PersonLinksSelf.fromJson(json['self']);
    image = PersonLinksImage.fromJson(json['image']);
    memberOf = PersonLinksMemberOf.fromJson(json['memberOf']);
  }

  PersonLinksSelf self;

  PersonLinksImage image;

  PersonLinksMemberOf memberOf;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'image': image,
      'memberOf': memberOf,
    };
  }

  @override
  String toString() {
    return 'PersonLinks[self=$self, image=$image, memberOf=$memberOf, ]';
  }

  static List<PersonLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<PersonLinks>() : json.map((value) => PersonLinks.fromJson(value)).toList();
  }

  static Map<String, PersonLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PersonLinks.fromJson(value));
    }
    return map;
  }
}
