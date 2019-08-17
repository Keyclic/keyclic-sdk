part of keyclic_sdk_api.api;

class PersonLinks {
  PersonLinks({
    this.image,
    this.memberOf,
    this.self,
  });

  PersonLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    image = PersonLinksImage.fromJson(json['image']);
    memberOf = PersonLinksMemberOf.fromJson(json['memberOf']);
    self = PersonLinksSelf.fromJson(json['self']);
  }

  PersonLinksImage image;

  PersonLinksMemberOf memberOf;

  PersonLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'memberOf': memberOf,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'PersonLinks[image=$image, memberOf=$memberOf, self=$self, ]';
  }

  static List<PersonLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PersonLinks>()
        : json.map((value) => PersonLinks.fromJson(value)).toList();
  }

  static Map<String, PersonLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PersonLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PersonLinks.fromJson(value));
    }
    return map;
  }
}
