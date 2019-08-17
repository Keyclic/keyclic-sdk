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

  FeedbackLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    businessActivity =
        FeedbackLinksBusinessActivity.fromJson(json['businessActivity']);
    category = FeedbackLinksCategory.fromJson(json['category']);
    image = FeedbackLinksImage.fromJson(json['image']);
    images = FeedbackLinksImages.listFromJson(json['images']);
    reporter = FeedbackLinksReporter.fromJson(json['reporter']);
    self = FeedbackLinksSelf.fromJson(json['self']);
    tracking = FeedbackLinksTracking.fromJson(json['tracking']);
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
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'businessActivity': businessActivity,
      'category': category,
      'image': image,
      'images': images,
      'reporter': reporter,
      'self': self,
      'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinks[businessActivity=$businessActivity, category=$category, image=$image, images=$images, reporter=$reporter, self=$self, tracking=$tracking, ]';
  }

  static List<FeedbackLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackLinks>()
        : json.map((value) => FeedbackLinks.fromJson(value)).toList();
  }

  static Map<String, FeedbackLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinks.fromJson(value));
    }
    return map;
  }
}
