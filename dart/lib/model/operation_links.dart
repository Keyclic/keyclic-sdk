part of keyclic_sdk_api.api;

class OperationLinks {
  OperationLinks({
    this.createdBy,
    this.feedback,
    this.image,
    this.images,
    this.operator_,
    this.organization,
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
    organization = OperationLinksOrganization.fromJson(json['organization']);
    report = OperationLinksReport.fromJson(json['report']);
    self = OperationLinksSelf.fromJson(json['self']);
    tracking = OperationLinksTracking.fromJson(json['tracking']);
  }

  OperationLinksCreatedBy createdBy;

  OperationLinksFeedback feedback;

  OperationLinksImage image;

  List<OperationLinksImages> images;

  OperationLinksOperator operator_;

  OperationLinksOrganization organization;

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
        organization == other.organization &&
        report == other.report &&
        self == other.self &&
        tracking == other.tracking;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (images is List && images.isNotEmpty) {
      hashCode ^= images
          .map((OperationLinksImages element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= createdBy?.hashCode ?? 0;
    hashCode ^= feedback?.hashCode ?? 0;
    hashCode ^= image?.hashCode ?? 0;
    hashCode ^= operator_?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= report?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;
    hashCode ^= tracking?.hashCode ?? 0;

    return hashCode;
  }

  static List<OperationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <OperationLinks>[]
        : json.map((dynamic value) => OperationLinks.fromJson(value)).toList();
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
      if (createdBy != null) 'createdBy': createdBy,
      if (feedback != null) 'feedback': feedback,
      if (image != null) 'image': image,
      if (images != null) 'images': images,
      if (operator_ != null) 'operator': operator_,
      if (organization != null) 'organization': organization,
      if (report != null) 'report': report,
      if (self != null) 'self': self,
      if (tracking != null) 'tracking': tracking,
    };
  }

  @override
  String toString() {
    return 'OperationLinks[createdBy=$createdBy, feedback=$feedback, image=$image, images=$images, operator_=$operator_, organization=$organization, report=$report, self=$self, tracking=$tracking, ]';
  }
}
