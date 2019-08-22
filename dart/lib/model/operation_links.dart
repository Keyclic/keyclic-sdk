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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinks &&
        runtimeType == other.runtimeType &&
        createdBy == other.createdBy &&
        feedback == other.feedback &&
        image == other.image &&
        DeepCollectionEquality.unordered().equals(images, other.images) &&
        operator_ == other.operator_ &&
        report == other.report &&
        self == other.self &&
        tracking == other.tracking;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      createdBy.hashCode ^
      feedback.hashCode ^
      image.hashCode ^
      images.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode) ^
      operator_.hashCode ^
      report.hashCode ^
      self.hashCode ^
      tracking.hashCode;

  static List<OperationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinks>[]
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
