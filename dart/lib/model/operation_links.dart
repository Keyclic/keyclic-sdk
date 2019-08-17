part of keyclic_sdk_api.api;

class OperationLinks {
  OperationLinks({
    this.createdBy,
    this.feedback,
    this.image,
    this.images,
    this.operator_,
    this.report,
    this.self,
    this.tracking,
  });

  OperationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    createdBy = OperationLinksCreatedBy.fromJson(json['createdBy']);
    feedback = OperationLinksFeedback.fromJson(json['feedback']);
    image = OperationLinksImage.fromJson(json['image']);
    images = OperationLinksImages.listFromJson(json['images']);
    operator_ = OperationLinksOperator.fromJson(json['operator']);
    report = OperationLinksReport.fromJson(json['report']);
    self = OperationLinksSelf.fromJson(json['self']);
    tracking = OperationLinksTracking.fromJson(json['tracking']);
  }

  OperationLinksCreatedBy createdBy;

  OperationLinksFeedback feedback;

  OperationLinksImage image;

  List<OperationLinksImages> images;

  OperationLinksOperator operator_;

  OperationLinksReport report;

  OperationLinksSelf self;

  OperationLinksTracking tracking;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinks && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<OperationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationLinks>()
        : json.map((value) => OperationLinks.fromJson(value)).toList();
  }

  static Map<String, OperationLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OperationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinks.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'createdBy': createdBy,
      'feedback': feedback,
      'image': image,
      'images': images,
      'operator': operator_,
      'report': report,
      'self': self,
      'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'OperationLinks[createdBy=$createdBy, feedback=$feedback, image=$image, images=$images, operator_=$operator_, report=$report, self=$self, tracking=$tracking, ]';
  }
}
