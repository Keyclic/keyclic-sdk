part of keyclic_sdk_api.api;

class OperationLinks {
  OperationLinks();

  OperationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = OperationLinksSelf.fromJson(json['self']);
    image = OperationLinksImage.fromJson(json['image']);
    feedback = OperationLinksFeedback.fromJson(json['feedback']);
    report = OperationLinksReport.fromJson(json['report']);
    operator_ = OperationLinksOperator.fromJson(json['operator']);
    createdBy = OperationLinksCreatedBy.fromJson(json['createdBy']);
    tracking = OperationLinksTracking.fromJson(json['tracking']);
    images = FeedbackLinksImages.listFromJson(json['images']);
  }

  OperationLinksSelf self;

  OperationLinksImage image;

  OperationLinksFeedback feedback;

  OperationLinksReport report;

  OperationLinksOperator operator_;

  OperationLinksCreatedBy createdBy;

  OperationLinksTracking tracking;

  List<FeedbackLinksImages> images;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'image': image,
      'feedback': feedback,
      'report': report,
      'operator': operator_,
      'createdBy': createdBy,
      'tracking': tracking,
      'images': images,
    };
  }

  @override
  String toString() {
    return 'OperationLinks[self=$self, image=$image, feedback=$feedback, report=$report, operator_=$operator_, createdBy=$createdBy, tracking=$tracking, images=$images, ]';
  }

  static List<OperationLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<OperationLinks>() : json.map((value) => OperationLinks.fromJson(value)).toList();
  }

  static Map<String, OperationLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OperationLinks.fromJson(value));
    }
    return map;
  }
}
