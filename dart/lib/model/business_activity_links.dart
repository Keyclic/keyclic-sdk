part of keyclic_sdk_api.api;

class BusinessActivityLinks {
  BusinessActivityLinks({
    this.self,
    this.schema,
    this.image,
  });

  BusinessActivityLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = BusinessActivityLinksSelf.fromJson(json['self']);
    schema = BusinessActivityLinksSchema.fromJson(json['schema']);
    image = BusinessActivityLinksImage.fromJson(json['image']);
  }

  BusinessActivityLinksSelf self;

  BusinessActivityLinksSchema schema;

  BusinessActivityLinksImage image;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'schema': schema,
      'image': image,
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinks[self=$self, schema=$schema, image=$image, ]';
  }

  static List<BusinessActivityLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<BusinessActivityLinks>()
        : json.map((value) => BusinessActivityLinks.fromJson(value)).toList();
  }

  static Map<String, BusinessActivityLinks> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, BusinessActivityLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivityLinks.fromJson(value));
    }
    return map;
  }
}
