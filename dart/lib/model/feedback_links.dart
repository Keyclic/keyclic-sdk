part of keyclic_sdk_api.api;

class FeedbackLinks {
  FeedbackLinks();

  FeedbackLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = FeedbackLinksSelf.fromJson(json['self']);
    category = FeedbackLinksCategory.fromJson(json['category']);
    businessActivity = FeedbackLinksBusinessActivity.fromJson(json['businessActivity']);
    reporter = FeedbackLinksReporter.fromJson(json['reporter']);
    image = FeedbackLinksImage.fromJson(json['image']);
    tracking = FeedbackLinksTracking.fromJson(json['tracking']);
    images = FeedbackLinksImages.listFromJson(json['images']);
  }

  FeedbackLinksSelf self;

  FeedbackLinksCategory category;

  FeedbackLinksBusinessActivity businessActivity;

  FeedbackLinksReporter reporter;

  FeedbackLinksImage image;

  FeedbackLinksTracking tracking;

  List<FeedbackLinksImages> images;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'category': category,
      'businessActivity': businessActivity,
      'reporter': reporter,
      'image': image,
      'tracking': tracking,
      'images': images,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinks[self=$self, category=$category, businessActivity=$businessActivity, reporter=$reporter, image=$image, tracking=$tracking, images=$images, ]';
  }

  static List<FeedbackLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackLinks>() : json.map((value) => FeedbackLinks.fromJson(value)).toList();
  }

  static Map<String, FeedbackLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackLinks.fromJson(value));
    }
    return map;
  }
}
