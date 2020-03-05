part of keyclic_sdk_api.api;

class BusinessActivityLinks {
  BusinessActivityLinks({
    this.image,
    this.schema,
    this.self,
    this.thumbnail,
  });

  factory BusinessActivityLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return BusinessActivityLinks(
      image: BusinessActivityLinksImage.fromJson(json['image']),
      schema: BusinessActivityLinksSchema.fromJson(json['schema']),
      self: BusinessActivityLinksSelf.fromJson(json['self']),
      thumbnail: BusinessActivityLinksThumbnail.fromJson(json['thumbnail']),
    );
  }

  BusinessActivityLinksImage image;

  BusinessActivityLinksSchema schema;

  BusinessActivityLinksSelf self;

  BusinessActivityLinksThumbnail thumbnail;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinks &&
        runtimeType == other.runtimeType &&
        image == other.image &&
        schema == other.schema &&
        self == other.self &&
        thumbnail == other.thumbnail;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= image?.hashCode ?? 0;
    hashCode ^= schema?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;
    hashCode ^= thumbnail?.hashCode ?? 0;

    return hashCode;
  }

  static List<BusinessActivityLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BusinessActivityLinks.fromJson(value))
            ?.toList() ??
        <BusinessActivityLinks>[];
  }

  static Map<String, BusinessActivityLinks> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, BusinessActivityLinks.fromJson(value));
        }) ??
        <String, BusinessActivityLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (image != null) 'image': image.toJson(),
      if (schema != null) 'schema': schema.toJson(),
      if (self != null) 'self': self.toJson(),
      if (thumbnail != null) 'thumbnail': thumbnail.toJson(),
    };
  }

  @override
  String toString() {
    return 'BusinessActivityLinks[image=$image, schema=$schema, self=$self, thumbnail=$thumbnail, ]';
  }
}
