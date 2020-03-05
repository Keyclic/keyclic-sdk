part of keyclic_sdk_api.api;

class FeedbackLinks {
  FeedbackLinks({
    this.businessActivity,
    this.category,
    this.image,
    this.images,
    this.reporter,
    this.self,
    this.tracking,
  });

  factory FeedbackLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinks(
      businessActivity:
          FeedbackLinksBusinessActivity.fromJson(json['businessActivity']),
      category: FeedbackLinksCategory.fromJson(json['category']),
      image: FeedbackLinksImage.fromJson(json['image']),
      images: FeedbackLinksImages.listFromJson(json['images']),
      reporter: FeedbackLinksReporter.fromJson(json['reporter']),
      self: FeedbackLinksSelf.fromJson(json['self']),
      tracking: FeedbackLinksTracking.fromJson(json['tracking']),
    );
  }

  FeedbackLinksBusinessActivity businessActivity;

  FeedbackLinksCategory category;

  FeedbackLinksImage image;

  List<FeedbackLinksImages> images;

  FeedbackLinksReporter reporter;

  FeedbackLinksSelf self;

  FeedbackLinksTracking tracking;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinks &&
        runtimeType == other.runtimeType &&
        businessActivity == other.businessActivity &&
        category == other.category &&
        image == other.image &&
        DeepCollectionEquality.unordered().equals(images, other.images) &&
        reporter == other.reporter &&
        self == other.self &&
        tracking == other.tracking;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (images is List && images.isNotEmpty) {
      hashCode ^= images
          .map((FeedbackLinksImages element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= businessActivity?.hashCode ?? 0;
    hashCode ^= category?.hashCode ?? 0;
    hashCode ^= image?.hashCode ?? 0;
    hashCode ^= reporter?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;
    hashCode ^= tracking?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackLinks.fromJson(value))
            ?.toList() ??
        <FeedbackLinks>[];
  }

  static Map<String, FeedbackLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, FeedbackLinks.fromJson(value));
        }) ??
        <String, FeedbackLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (businessActivity != null)
        'businessActivity': businessActivity.toJson(),
      if (category != null) 'category': category.toJson(),
      if (image != null) 'image': image.toJson(),
      if (images != null) 'images': images,
      if (reporter != null) 'reporter': reporter.toJson(),
      if (self != null) 'self': self.toJson(),
      if (tracking != null) 'tracking': tracking.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinks[businessActivity=$businessActivity, category=$category, image=$image, images=$images, reporter=$reporter, self=$self, tracking=$tracking, ]';
  }
}
