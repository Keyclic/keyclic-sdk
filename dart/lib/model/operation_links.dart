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

  factory OperationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinks(
      createdBy: OperationLinksCreatedBy.fromJson(json['createdBy']),
      feedback: OperationLinksFeedback.fromJson(json['feedback']),
      image: OperationLinksImage.fromJson(json['image']),
      images: OperationLinksImages.listFromJson(json['images']),
      operator_: OperationLinksOperator.fromJson(json['operator']),
      organization: OperationLinksOrganization.fromJson(json['organization']),
      report: OperationLinksReport.fromJson(json['report']),
      self: OperationLinksSelf.fromJson(json['self']),
      tracking: OperationLinksTracking.fromJson(json['tracking']),
    );
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
    return json
            ?.map((dynamic value) => OperationLinks.fromJson(value))
            ?.toList() ??
        <OperationLinks>[];
  }

  static Map<String, OperationLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, OperationLinks.fromJson(value));
        }) ??
        <String, OperationLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (createdBy != null) 'createdBy': createdBy.toJson(),
      if (feedback != null) 'feedback': feedback.toJson(),
      if (image != null) 'image': image.toJson(),
      if (images != null) 'images': images,
      if (operator_ != null) 'operator': operator_.toJson(),
      if (organization != null) 'organization': organization.toJson(),
      if (report != null) 'report': report.toJson(),
      if (self != null) 'self': self.toJson(),
      if (tracking != null) 'tracking': tracking.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinks[createdBy=$createdBy, feedback=$feedback, image=$image, images=$images, operator_=$operator_, organization=$organization, report=$report, self=$self, tracking=$tracking, ]';
  }
}
