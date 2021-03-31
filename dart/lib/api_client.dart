part of keyclic_sdk_api.api;

class QueryParam {
  QueryParam(this.name, this.value);

  String name;
  String value;
}

class ApiClient {
  ApiClient({
    this.basePath = "https://api.keyclic.com",
    this.debug = false,
  });

  final Map<String, Authentication> _authentications = {
    // Setup authentications (key: authentication name, value: authentication).
    'bearer': OAuth(),
  };
  final Logger _logger = Logger('ApiClient');
  final RegExp _regList = RegExp(r'^List<(.*)>$');
  final RegExp _regMap = RegExp(r'^Map<String,(.*)>$');

  final String basePath;
  final bool debug;
  final Client client = Client();

  Map<String, String> _defaultHeaderMap = <String, String>{};

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') {
      return jsonVal;
    }

    var decodedJson = json.decode(jsonVal);

    return _deserialize(decodedJson, targetType);
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI({
    String path,
    String method,
    Iterable<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    String contentType,
    List<String> authNames,
  }) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    final List<String> queryParamList = queryParams
        .where((QueryParam queryParam) => queryParam.value != null)
        .map<String>(
            (QueryParam queryParam) => '${queryParam.name}=${queryParam.value}')
        .toList();

    String queryString =
        queryParamList.isNotEmpty ? '?${queryParamList.join('&')}' : '';

    final String url = '$basePath$path$queryString';

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    final String msgBody = serialize(body);

    if (debug) {
      _logger.info('url: ${url}');
    }

    switch (method) {
      case "POST":
        return client.post(url, headers: headerParams, body: msgBody);
      case "PUT":
        return client.put(url, headers: headerParams, body: msgBody);
      case "DELETE":
        return client.delete(url, headers: headerParams);
      case "PATCH":
        return client.patch(url, headers: headerParams, body: msgBody);
      default:
        return client.get(url, headers: headerParams);
    }
  }

  String serialize(Object obj) {
    if (obj == null) {
      return '';
    }

    return json.encode(obj);
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      auth.setAccessToken(accessToken);
    });
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Activity':
          return Activity.fromJson(value);
        case 'ActivityAggregatedPagination':
          return ActivityAggregatedPagination.fromJson(value);
        case 'ActivityEntity':
          return ActivityEntity.fromJson(value);
        case 'ActivityGroup':
          return ActivityGroup.fromJson(value);
        case 'ActivityPagination':
          return ActivityPagination.fromJson(value);
        case 'AgreementOlderThan':
          return AgreementOlderThan.fromJson(value);
        case 'AgreementPrivacyPolicy':
          return AgreementPrivacyPolicy.fromJson(value);
        case 'AgreementTermsOfService':
          return AgreementTermsOfService.fromJson(value);
        case 'Application':
          return Application.fromJson(value);
        case 'ApplicationAbout':
          return ApplicationAbout.fromJson(value);
        case 'ApplicationAgreement':
          return ApplicationAgreement.fromJson(value);
        case 'ApplicationConfiguration':
          return ApplicationConfiguration.fromJson(value);
        case 'ApplicationContactPoint':
          return ApplicationContactPoint.fromJson(value);
        case 'ApplicationLinks':
          return ApplicationLinks.fromJson(value);
        case 'ApplicationLinksKnowledgeBase':
          return ApplicationLinksKnowledgeBase.fromJson(value);
        case 'ApplicationLinksKnowledgeBaseIriTemplate':
          return ApplicationLinksKnowledgeBaseIriTemplate.fromJson(value);
        case 'ApplicationLinksKnowledgeBaseIriTemplateMapping':
          return ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(
              value);
        case 'ApplicationLinksSelf':
          return ApplicationLinksSelf.fromJson(value);
        case 'ApplicationLinksSelfIriTemplate':
          return ApplicationLinksSelfIriTemplate.fromJson(value);
        case 'ApplicationLinksSelfIriTemplateMapping':
          return ApplicationLinksSelfIriTemplateMapping.fromJson(value);
        case 'Article':
          return Article.fromJson(value);
        case 'ArticleCollection':
          return ArticleCollection.fromJson(value);
        case 'ArticleLinks':
          return ArticleLinks.fromJson(value);
        case 'ArticleLinksSection':
          return ArticleLinksSection.fromJson(value);
        case 'ArticleLinksSectionIriTemplate':
          return ArticleLinksSectionIriTemplate.fromJson(value);
        case 'ArticleLinksSectionIriTemplateMapping':
          return ArticleLinksSectionIriTemplateMapping.fromJson(value);
        case 'ArticleLinksSelf':
          return ArticleLinksSelf.fromJson(value);
        case 'ArticleLinksSelfIriTemplate':
          return ArticleLinksSelfIriTemplate.fromJson(value);
        case 'ArticleLinksSelfIriTemplateMapping':
          return ArticleLinksSelfIriTemplateMapping.fromJson(value);
        case 'AssignData':
          return AssignData.fromJson(value);
        case 'Assignment':
          return Assignment.fromJson(value);
        case 'AssignmentCollection':
          return AssignmentCollection.fromJson(value);
        case 'AssignmentData':
          return AssignmentData.fromJson(value);
        case 'AssignmentEmbedded':
          return AssignmentEmbedded.fromJson(value);
        case 'AssignmentEmbeddedWorkflow':
          return AssignmentEmbeddedWorkflow.fromJson(value);
        case 'AssignmentLinks':
          return AssignmentLinks.fromJson(value);
        case 'AssignmentLinksCreatedBy':
          return AssignmentLinksCreatedBy.fromJson(value);
        case 'AssignmentLinksCreatedByIriTemplate':
          return AssignmentLinksCreatedByIriTemplate.fromJson(value);
        case 'AssignmentLinksCreatedByIriTemplateMapping':
          return AssignmentLinksCreatedByIriTemplateMapping.fromJson(value);
        case 'AssignmentLinksReport':
          return AssignmentLinksReport.fromJson(value);
        case 'AssignmentLinksReportIriTemplate':
          return AssignmentLinksReportIriTemplate.fromJson(value);
        case 'AssignmentLinksReportIriTemplateMapping':
          return AssignmentLinksReportIriTemplateMapping.fromJson(value);
        case 'AssignmentLinksSelf':
          return AssignmentLinksSelf.fromJson(value);
        case 'AssignmentLinksSelfIriTemplate':
          return AssignmentLinksSelfIriTemplate.fromJson(value);
        case 'AssignmentLinksSelfIriTemplateMapping':
          return AssignmentLinksSelfIriTemplateMapping.fromJson(value);
        case 'AssignmentLinksService':
          return AssignmentLinksService.fromJson(value);
        case 'AssignmentLinksServiceIriTemplate':
          return AssignmentLinksServiceIriTemplate.fromJson(value);
        case 'AssignmentLinksServiceIriTemplateMapping':
          return AssignmentLinksServiceIriTemplateMapping.fromJson(value);
        case 'AssignmentTypeWorkflow':
          return AssignmentTypeWorkflow.fromJson(value);
        case 'Binary':
          return Binary.fromJson(value);
        case 'BinaryCollection':
          return BinaryCollection.fromJson(value);
        case 'Bookmark':
          return Bookmark.fromJson(value);
        case 'BookmarkCollection':
          return BookmarkCollection.fromJson(value);
        case 'BookmarkData':
          return BookmarkData.fromJson(value);
        case 'BookmarkEmbedded':
          return BookmarkEmbedded.fromJson(value);
        case 'BookmarkLinks':
          return BookmarkLinks.fromJson(value);
        case 'BookmarkLinksMember':
          return BookmarkLinksMember.fromJson(value);
        case 'BookmarkLinksMemberIriTemplate':
          return BookmarkLinksMemberIriTemplate.fromJson(value);
        case 'BookmarkLinksMemberIriTemplateMapping':
          return BookmarkLinksMemberIriTemplateMapping.fromJson(value);
        case 'BookmarkLinksPlace':
          return BookmarkLinksPlace.fromJson(value);
        case 'BookmarkLinksPlaceIriTemplate':
          return BookmarkLinksPlaceIriTemplate.fromJson(value);
        case 'BookmarkLinksPlaceIriTemplateMapping':
          return BookmarkLinksPlaceIriTemplateMapping.fromJson(value);
        case 'BookmarkLinksSelf':
          return BookmarkLinksSelf.fromJson(value);
        case 'BookmarkLinksSelfIriTemplate':
          return BookmarkLinksSelfIriTemplate.fromJson(value);
        case 'BookmarkLinksSelfIriTemplateMapping':
          return BookmarkLinksSelfIriTemplateMapping.fromJson(value);
        case 'BusinessActivity':
          return BusinessActivity.fromJson(value);
        case 'BusinessActivityCollection':
          return BusinessActivityCollection.fromJson(value);
        case 'BusinessActivityLinks':
          return BusinessActivityLinks.fromJson(value);
        case 'BusinessActivityLinksImage':
          return BusinessActivityLinksImage.fromJson(value);
        case 'BusinessActivityLinksImageIriTemplate':
          return BusinessActivityLinksImageIriTemplate.fromJson(value);
        case 'BusinessActivityLinksImageIriTemplateMapping':
          return BusinessActivityLinksImageIriTemplateMapping.fromJson(value);
        case 'BusinessActivityLinksSchema':
          return BusinessActivityLinksSchema.fromJson(value);
        case 'BusinessActivityLinksSchemaIriTemplate':
          return BusinessActivityLinksSchemaIriTemplate.fromJson(value);
        case 'BusinessActivityLinksSelf':
          return BusinessActivityLinksSelf.fromJson(value);
        case 'BusinessActivityLinksSelfIriTemplate':
          return BusinessActivityLinksSelfIriTemplate.fromJson(value);
        case 'BusinessActivityLinksThumbnail':
          return BusinessActivityLinksThumbnail.fromJson(value);
        case 'BusinessActivityLinksThumbnailIriTemplate':
          return BusinessActivityLinksThumbnailIriTemplate.fromJson(value);
        case 'BusinessActivitySchema':
          return BusinessActivitySchema.fromJson(value);
        case 'Category':
          return Category.fromJson(value);
        case 'CategoryCollection':
          return CategoryCollection.fromJson(value);
        case 'CategoryData':
          return CategoryData.fromJson(value);
        case 'CategoryEmbedded':
          return CategoryEmbedded.fromJson(value);
        case 'CategoryLinks':
          return CategoryLinks.fromJson(value);
        case 'CategoryLinksOrganization':
          return CategoryLinksOrganization.fromJson(value);
        case 'CategoryLinksOrganizationIriTemplate':
          return CategoryLinksOrganizationIriTemplate.fromJson(value);
        case 'CategoryLinksOrganizationIriTemplateMapping':
          return CategoryLinksOrganizationIriTemplateMapping.fromJson(value);
        case 'CategoryLinksSelf':
          return CategoryLinksSelf.fromJson(value);
        case 'CategoryLinksSelfIriTemplate':
          return CategoryLinksSelfIriTemplate.fromJson(value);
        case 'CategoryLinksSelfIriTemplateMapping':
          return CategoryLinksSelfIriTemplateMapping.fromJson(value);
        case 'CategoryPatch':
          return CategoryPatch.fromJson(value);
        case 'Chart':
          return Chart.fromJson(value);
        case 'Checkpoint':
          return Checkpoint.fromJson(value);
        case 'CheckpointLinks':
          return CheckpointLinks.fromJson(value);
        case 'CheckpointLinksOrganization':
          return CheckpointLinksOrganization.fromJson(value);
        case 'CheckpointLinksOrganizationIriTemplate':
          return CheckpointLinksOrganizationIriTemplate.fromJson(value);
        case 'CheckpointState':
          return CheckpointState.fromJson(value);
        case 'CommentData':
          return CommentData.fromJson(value);
        case 'ConditionListCondition':
          return ConditionListCondition.fromJson(value);
        case 'Configuration':
          return Configuration.fromJson(value);
        case 'ConfigurationAssignmentType':
          return ConfigurationAssignmentType.fromJson(value);
        case 'ConfigurationLinks':
          return ConfigurationLinks.fromJson(value);
        case 'ConfigurationLinksSelf':
          return ConfigurationLinksSelf.fromJson(value);
        case 'ConfigurationLinksSelfIriTemplate':
          return ConfigurationLinksSelfIriTemplate.fromJson(value);
        case 'ConfigurationLinksSelfIriTemplateMapping':
          return ConfigurationLinksSelfIriTemplateMapping.fromJson(value);
        case 'ConfigurationMemberType':
          return ConfigurationMemberType.fromJson(value);
        case 'ConfigurationOperationType':
          return ConfigurationOperationType.fromJson(value);
        case 'ConfigurationReportType':
          return ConfigurationReportType.fromJson(value);
        case 'Contribution':
          return Contribution.fromJson(value);
        case 'ContributionCollection':
          return ContributionCollection.fromJson(value);
        case 'ContributionData':
          return ContributionData.fromJson(value);
        case 'ContributionLinks':
          return ContributionLinks.fromJson(value);
        case 'ContributionLinksContributor':
          return ContributionLinksContributor.fromJson(value);
        case 'ContributionLinksContributorIriTemplate':
          return ContributionLinksContributorIriTemplate.fromJson(value);
        case 'ContributionLinksFeedback':
          return ContributionLinksFeedback.fromJson(value);
        case 'ContributionLinksFeedbackIriTemplate':
          return ContributionLinksFeedbackIriTemplate.fromJson(value);
        case 'ContributionLinksFeedbackIriTemplateMapping':
          return ContributionLinksFeedbackIriTemplateMapping.fromJson(value);
        case 'Device':
          return Device.fromJson(value);
        case 'DeviceData':
          return DeviceData.fromJson(value);
        case 'DeviceLinks':
          return DeviceLinks.fromJson(value);
        case 'DeviceLinksPerson':
          return DeviceLinksPerson.fromJson(value);
        case 'DeviceLinksPersonIriTemplate':
          return DeviceLinksPersonIriTemplate.fromJson(value);
        case 'DeviceLinksSelf':
          return DeviceLinksSelf.fromJson(value);
        case 'DeviceLinksSelfIriTemplate':
          return DeviceLinksSelfIriTemplate.fromJson(value);
        case 'DeviceLinksSelfIriTemplateMapping':
          return DeviceLinksSelfIriTemplateMapping.fromJson(value);
        case 'Dispatcher':
          return Dispatcher.fromJson(value);
        case 'Document':
          return Document.fromJson(value);
        case 'DocumentCollection':
          return DocumentCollection.fromJson(value);
        case 'DocumentData':
          return DocumentData.fromJson(value);
        case 'DocumentDataFile':
          return DocumentDataFile.fromJson(value);
        case 'DocumentDataPermission':
          return DocumentDataPermission.fromJson(value);
        case 'DocumentEmbedded':
          return DocumentEmbedded.fromJson(value);
        case 'DocumentFile':
          return DocumentFile.fromJson(value);
        case 'DocumentLinks':
          return DocumentLinks.fromJson(value);
        case 'DocumentLinksCreatedBy':
          return DocumentLinksCreatedBy.fromJson(value);
        case 'DocumentLinksCreatedByIriTemplate':
          return DocumentLinksCreatedByIriTemplate.fromJson(value);
        case 'DocumentLinksFile':
          return DocumentLinksFile.fromJson(value);
        case 'DocumentLinksFileIriTemplate':
          return DocumentLinksFileIriTemplate.fromJson(value);
        case 'DocumentLinksFileIriTemplateMapping':
          return DocumentLinksFileIriTemplateMapping.fromJson(value);
        case 'DocumentLinksSelf':
          return DocumentLinksSelf.fromJson(value);
        case 'DocumentLinksSelfIriTemplate':
          return DocumentLinksSelfIriTemplate.fromJson(value);
        case 'DocumentPatch':
          return DocumentPatch.fromJson(value);
        case 'DocumentPatchFile':
          return DocumentPatchFile.fromJson(value);
        case 'DocumentPatchPermission':
          return DocumentPatchPermission.fromJson(value);
        case 'DocumentPermission':
          return DocumentPermission.fromJson(value);
        case 'DocumentType':
          return DocumentType.fromJson(value);
        case 'DocumentWorkflowData':
          return DocumentWorkflowData.fromJson(value);
        case 'Duration':
          return Duration.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'ErrorEmbedded':
          return ErrorEmbedded.fromJson(value);
        case 'ExternalService':
          return ExternalService.fromJson(value);
        case 'ExternalServiceCollection':
          return ExternalServiceCollection.fromJson(value);
        case 'ExternalServiceContactPoint':
          return ExternalServiceContactPoint.fromJson(value);
        case 'ExternalServiceData':
          return ExternalServiceData.fromJson(value);
        case 'ExternalServiceEmbedded':
          return ExternalServiceEmbedded.fromJson(value);
        case 'ExternalServiceLinks':
          return ExternalServiceLinks.fromJson(value);
        case 'ExternalServiceLinksProvider':
          return ExternalServiceLinksProvider.fromJson(value);
        case 'ExternalServiceLinksProviderIriTemplate':
          return ExternalServiceLinksProviderIriTemplate.fromJson(value);
        case 'ExternalServiceLinksSelf':
          return ExternalServiceLinksSelf.fromJson(value);
        case 'ExternalServiceLinksSelfIriTemplate':
          return ExternalServiceLinksSelfIriTemplate.fromJson(value);
        case 'ExternalServiceLinksSelfIriTemplateMapping':
          return ExternalServiceLinksSelfIriTemplateMapping.fromJson(value);
        case 'ExternalServicePatch':
          return ExternalServicePatch.fromJson(value);
        case 'ExternalServicePatchAddress':
          return ExternalServicePatchAddress.fromJson(value);
        case 'ExternalServicePatchContactPoint':
          return ExternalServicePatchContactPoint.fromJson(value);
        case 'ExternalServicePostalAddress':
          return ExternalServicePostalAddress.fromJson(value);
        case 'Feature':
          return Feature.fromJson(value);
        case 'FeatureGeometry':
          return FeatureGeometry.fromJson(value);
        case 'Feed':
          return Feed.fromJson(value);
        case 'FeedCollection':
          return FeedCollection.fromJson(value);
        case 'Feedback':
          return Feedback.fromJson(value);
        case 'FeedbackCollection':
          return FeedbackCollection.fromJson(value);
        case 'FeedbackData':
          return FeedbackData.fromJson(value);
        case 'FeedbackDataGeo':
          return FeedbackDataGeo.fromJson(value);
        case 'FeedbackDataGeoPoint':
          return FeedbackDataGeoPoint.fromJson(value);
        case 'FeedbackEmbedded':
          return FeedbackEmbedded.fromJson(value);
        case 'FeedbackGeoCoordinates':
          return FeedbackGeoCoordinates.fromJson(value);
        case 'FeedbackLinks':
          return FeedbackLinks.fromJson(value);
        case 'FeedbackLinksBusinessActivity':
          return FeedbackLinksBusinessActivity.fromJson(value);
        case 'FeedbackLinksBusinessActivityIriTemplate':
          return FeedbackLinksBusinessActivityIriTemplate.fromJson(value);
        case 'FeedbackLinksCategory':
          return FeedbackLinksCategory.fromJson(value);
        case 'FeedbackLinksCategoryIriTemplate':
          return FeedbackLinksCategoryIriTemplate.fromJson(value);
        case 'FeedbackLinksImage':
          return FeedbackLinksImage.fromJson(value);
        case 'FeedbackLinksImageIriTemplate':
          return FeedbackLinksImageIriTemplate.fromJson(value);
        case 'FeedbackLinksImageIriTemplateMapping':
          return FeedbackLinksImageIriTemplateMapping.fromJson(value);
        case 'FeedbackLinksImages':
          return FeedbackLinksImages.fromJson(value);
        case 'FeedbackLinksImagesIriTemplate':
          return FeedbackLinksImagesIriTemplate.fromJson(value);
        case 'FeedbackLinksPlans':
          return FeedbackLinksPlans.fromJson(value);
        case 'FeedbackLinksPlansIriTemplate':
          return FeedbackLinksPlansIriTemplate.fromJson(value);
        case 'FeedbackLinksPlansIriTemplateMapping':
          return FeedbackLinksPlansIriTemplateMapping.fromJson(value);
        case 'FeedbackLinksReport':
          return FeedbackLinksReport.fromJson(value);
        case 'FeedbackLinksReportIriTemplate':
          return FeedbackLinksReportIriTemplate.fromJson(value);
        case 'FeedbackLinksReporter':
          return FeedbackLinksReporter.fromJson(value);
        case 'FeedbackLinksReporterIriTemplate':
          return FeedbackLinksReporterIriTemplate.fromJson(value);
        case 'FeedbackLinksSelf':
          return FeedbackLinksSelf.fromJson(value);
        case 'FeedbackLinksSelfIriTemplate':
          return FeedbackLinksSelfIriTemplate.fromJson(value);
        case 'FeedbackLinksTracking':
          return FeedbackLinksTracking.fromJson(value);
        case 'FeedbackLinksTrackingIriTemplate':
          return FeedbackLinksTrackingIriTemplate.fromJson(value);
        case 'FeedbackWorkflowTransitionData':
          return FeedbackWorkflowTransitionData.fromJson(value);
        case 'FileData':
          return FileData.fromJson(value);
        case 'GeoShape':
          return GeoShape.fromJson(value);
        case 'GeoShapeCentroid':
          return GeoShapeCentroid.fromJson(value);
        case 'ImageData':
          return ImageData.fromJson(value);
        case 'InternalService':
          return InternalService.fromJson(value);
        case 'InternalServiceCollection':
          return InternalServiceCollection.fromJson(value);
        case 'InternalServiceContactPoint':
          return InternalServiceContactPoint.fromJson(value);
        case 'InternalServiceData':
          return InternalServiceData.fromJson(value);
        case 'InternalServiceDataAddress':
          return InternalServiceDataAddress.fromJson(value);
        case 'InternalServiceDataContactPoint':
          return InternalServiceDataContactPoint.fromJson(value);
        case 'InternalServiceEmbedded':
          return InternalServiceEmbedded.fromJson(value);
        case 'InternalServiceLinks':
          return InternalServiceLinks.fromJson(value);
        case 'InternalServiceLinksOrganization':
          return InternalServiceLinksOrganization.fromJson(value);
        case 'InternalServiceLinksOrganizationIriTemplate':
          return InternalServiceLinksOrganizationIriTemplate.fromJson(value);
        case 'InternalServiceLinksSelf':
          return InternalServiceLinksSelf.fromJson(value);
        case 'InternalServiceLinksSelfIriTemplate':
          return InternalServiceLinksSelfIriTemplate.fromJson(value);
        case 'InternalServiceLinksSelfIriTemplateMapping':
          return InternalServiceLinksSelfIriTemplateMapping.fromJson(value);
        case 'InternalServicePatch':
          return InternalServicePatch.fromJson(value);
        case 'InternalServicePostalAddress':
          return InternalServicePostalAddress.fromJson(value);
        case 'Invitation':
          return Invitation.fromJson(value);
        case 'InvitationData':
          return InvitationData.fromJson(value);
        case 'InvitationEmbedded':
          return InvitationEmbedded.fromJson(value);
        case 'InvitationLinks':
          return InvitationLinks.fromJson(value);
        case 'InvitationLinksMember':
          return InvitationLinksMember.fromJson(value);
        case 'InvitationLinksMemberIriTemplate':
          return InvitationLinksMemberIriTemplate.fromJson(value);
        case 'InvitationLinksSelf':
          return InvitationLinksSelf.fromJson(value);
        case 'InvitationLinksSelfIriTemplate':
          return InvitationLinksSelfIriTemplate.fromJson(value);
        case 'InvitationLinksSelfIriTemplateMapping':
          return InvitationLinksSelfIriTemplateMapping.fromJson(value);
        case 'ItemsChoice':
          return ItemsChoice.fromJson(value);
        case 'KnowledgeBase':
          return KnowledgeBase.fromJson(value);
        case 'KnowledgeBaseLinks':
          return KnowledgeBaseLinks.fromJson(value);
        case 'KnowledgeBaseLinksSelf':
          return KnowledgeBaseLinksSelf.fromJson(value);
        case 'KnowledgeBaseLinksSelfIriTemplate':
          return KnowledgeBaseLinksSelfIriTemplate.fromJson(value);
        case 'LegacySignatureData':
          return LegacySignatureData.fromJson(value);
        case 'LegacySignatureDataSigner':
          return LegacySignatureDataSigner.fromJson(value);
        case 'LoginData':
          return LoginData.fromJson(value);
        case 'Marker':
          return Marker.fromJson(value);
        case 'MarkerData':
          return MarkerData.fromJson(value);
        case 'MarkerDataPoint':
          return MarkerDataPoint.fromJson(value);
        case 'MarkerLinks':
          return MarkerLinks.fromJson(value);
        case 'MarkerLinksPlan':
          return MarkerLinksPlan.fromJson(value);
        case 'MarkerLinksPlanIriTemplate':
          return MarkerLinksPlanIriTemplate.fromJson(value);
        case 'MarkerLinksPlanIriTemplateMapping':
          return MarkerLinksPlanIriTemplateMapping.fromJson(value);
        case 'MarkerLinksSelf':
          return MarkerLinksSelf.fromJson(value);
        case 'MarkerLinksSelfIriTemplate':
          return MarkerLinksSelfIriTemplate.fromJson(value);
        case 'MarkerLinksSelfIriTemplateMapping':
          return MarkerLinksSelfIriTemplateMapping.fromJson(value);
        case 'Member':
          return Member.fromJson(value);
        case 'MemberCollection':
          return MemberCollection.fromJson(value);
        case 'MemberContactPoint':
          return MemberContactPoint.fromJson(value);
        case 'MemberData':
          return MemberData.fromJson(value);
        case 'MemberEmbedded':
          return MemberEmbedded.fromJson(value);
        case 'MemberLinks':
          return MemberLinks.fromJson(value);
        case 'MemberLinksOrganization':
          return MemberLinksOrganization.fromJson(value);
        case 'MemberLinksOrganizationIriTemplate':
          return MemberLinksOrganizationIriTemplate.fromJson(value);
        case 'MemberLinksPerson':
          return MemberLinksPerson.fromJson(value);
        case 'MemberLinksPersonIriTemplate':
          return MemberLinksPersonIriTemplate.fromJson(value);
        case 'MemberLinksSelf':
          return MemberLinksSelf.fromJson(value);
        case 'MemberLinksSelfIriTemplate':
          return MemberLinksSelfIriTemplate.fromJson(value);
        case 'MemberPatch':
          return MemberPatch.fromJson(value);
        case 'MemberPatchContactPoint':
          return MemberPatchContactPoint.fromJson(value);
        case 'MemberTypeRole':
          return MemberTypeRole.fromJson(value);
        case 'Metric':
          return Metric.fromJson(value);
        case 'NodePath':
          return NodePath.fromJson(value);
        case 'Occupant':
          return Occupant.fromJson(value);
        case 'OccupantCollection':
          return OccupantCollection.fromJson(value);
        case 'OccupantData':
          return OccupantData.fromJson(value);
        case 'OccupantLinks':
          return OccupantLinks.fromJson(value);
        case 'OccupantLinksMember':
          return OccupantLinksMember.fromJson(value);
        case 'OccupantLinksMemberIriTemplate':
          return OccupantLinksMemberIriTemplate.fromJson(value);
        case 'OccupantLinksPlace':
          return OccupantLinksPlace.fromJson(value);
        case 'OccupantLinksPlaceIriTemplate':
          return OccupantLinksPlaceIriTemplate.fromJson(value);
        case 'OccupantLinksSelf':
          return OccupantLinksSelf.fromJson(value);
        case 'OccupantLinksSelfIriTemplate':
          return OccupantLinksSelfIriTemplate.fromJson(value);
        case 'OccupantLinksSelfIriTemplateMapping':
          return OccupantLinksSelfIriTemplateMapping.fromJson(value);
        case 'Operation':
          return Operation.fromJson(value);
        case 'OperationCollection':
          return OperationCollection.fromJson(value);
        case 'OperationData':
          return OperationData.fromJson(value);
        case 'OperationEmbedded':
          return OperationEmbedded.fromJson(value);
        case 'OperationLinks':
          return OperationLinks.fromJson(value);
        case 'OperationLinksCreatedBy':
          return OperationLinksCreatedBy.fromJson(value);
        case 'OperationLinksCreatedByIriTemplate':
          return OperationLinksCreatedByIriTemplate.fromJson(value);
        case 'OperationLinksFeedback':
          return OperationLinksFeedback.fromJson(value);
        case 'OperationLinksFeedbackIriTemplate':
          return OperationLinksFeedbackIriTemplate.fromJson(value);
        case 'OperationLinksImage':
          return OperationLinksImage.fromJson(value);
        case 'OperationLinksImageIriTemplate':
          return OperationLinksImageIriTemplate.fromJson(value);
        case 'OperationLinksImageIriTemplateMapping':
          return OperationLinksImageIriTemplateMapping.fromJson(value);
        case 'OperationLinksImages':
          return OperationLinksImages.fromJson(value);
        case 'OperationLinksImagesIriTemplate':
          return OperationLinksImagesIriTemplate.fromJson(value);
        case 'OperationLinksImagesIriTemplateMapping':
          return OperationLinksImagesIriTemplateMapping.fromJson(value);
        case 'OperationLinksOperator':
          return OperationLinksOperator.fromJson(value);
        case 'OperationLinksOperatorIriTemplate':
          return OperationLinksOperatorIriTemplate.fromJson(value);
        case 'OperationLinksOrganization':
          return OperationLinksOrganization.fromJson(value);
        case 'OperationLinksOrganizationIriTemplate':
          return OperationLinksOrganizationIriTemplate.fromJson(value);
        case 'OperationLinksReport':
          return OperationLinksReport.fromJson(value);
        case 'OperationLinksReportIriTemplate':
          return OperationLinksReportIriTemplate.fromJson(value);
        case 'OperationLinksSelf':
          return OperationLinksSelf.fromJson(value);
        case 'OperationLinksSelfIriTemplate':
          return OperationLinksSelfIriTemplate.fromJson(value);
        case 'OperationLinksSelfIriTemplateMapping':
          return OperationLinksSelfIriTemplateMapping.fromJson(value);
        case 'OperationLinksTracking':
          return OperationLinksTracking.fromJson(value);
        case 'OperationLinksTrackingIriTemplate':
          return OperationLinksTrackingIriTemplate.fromJson(value);
        case 'OperationPatch':
          return OperationPatch.fromJson(value);
        case 'OperationSignature':
          return OperationSignature.fromJson(value);
        case 'OperationTypeWorkflow':
          return OperationTypeWorkflow.fromJson(value);
        case 'Organization':
          return Organization.fromJson(value);
        case 'OrganizationCollection':
          return OrganizationCollection.fromJson(value);
        case 'OrganizationLinks':
          return OrganizationLinks.fromJson(value);
        case 'OrganizationLinksApplication':
          return OrganizationLinksApplication.fromJson(value);
        case 'OrganizationLinksApplicationIriTemplate':
          return OrganizationLinksApplicationIriTemplate.fromJson(value);
        case 'OrganizationLinksBusinessActivity':
          return OrganizationLinksBusinessActivity.fromJson(value);
        case 'OrganizationLinksBusinessActivityIriTemplate':
          return OrganizationLinksBusinessActivityIriTemplate.fromJson(value);
        case 'OrganizationLinksConfiguration':
          return OrganizationLinksConfiguration.fromJson(value);
        case 'OrganizationLinksConfigurationIriTemplate':
          return OrganizationLinksConfigurationIriTemplate.fromJson(value);
        case 'OrganizationLinksDispatcher':
          return OrganizationLinksDispatcher.fromJson(value);
        case 'OrganizationLinksDispatcherIriTemplate':
          return OrganizationLinksDispatcherIriTemplate.fromJson(value);
        case 'OrganizationLinksDispatcherIriTemplateMapping':
          return OrganizationLinksDispatcherIriTemplateMapping.fromJson(value);
        case 'OrganizationLinksLogo':
          return OrganizationLinksLogo.fromJson(value);
        case 'OrganizationLinksLogoIriTemplate':
          return OrganizationLinksLogoIriTemplate.fromJson(value);
        case 'OrganizationLinksSelf':
          return OrganizationLinksSelf.fromJson(value);
        case 'OrganizationLinksSelfIriTemplate':
          return OrganizationLinksSelfIriTemplate.fromJson(value);
        case 'OrganizationPatch':
          return OrganizationPatch.fromJson(value);
        case 'OrganizationPatchPreferences':
          return OrganizationPatchPreferences.fromJson(value);
        case 'OrganizationPatchPreferencesReference':
          return OrganizationPatchPreferencesReference.fromJson(value);
        case 'OrganizationPostalAddress':
          return OrganizationPostalAddress.fromJson(value);
        case 'OrganizationPreferences':
          return OrganizationPreferences.fromJson(value);
        case 'Pagination':
          return Pagination.fromJson(value);
        case 'PaginationLink':
          return PaginationLink.fromJson(value);
        case 'PaginationLinks':
          return PaginationLinks.fromJson(value);
        case 'PasswordChangeData':
          return PasswordChangeData.fromJson(value);
        case 'Person':
          return Person.fromJson(value);
        case 'PersonAgreement':
          return PersonAgreement.fromJson(value);
        case 'PersonLinks':
          return PersonLinks.fromJson(value);
        case 'PersonLinksApplication':
          return PersonLinksApplication.fromJson(value);
        case 'PersonLinksApplicationIriTemplate':
          return PersonLinksApplicationIriTemplate.fromJson(value);
        case 'PersonLinksCreatedBy':
          return PersonLinksCreatedBy.fromJson(value);
        case 'PersonLinksCreatedByIriTemplate':
          return PersonLinksCreatedByIriTemplate.fromJson(value);
        case 'PersonLinksImage':
          return PersonLinksImage.fromJson(value);
        case 'PersonLinksImageIriTemplate':
          return PersonLinksImageIriTemplate.fromJson(value);
        case 'PersonLinksSelf':
          return PersonLinksSelf.fromJson(value);
        case 'PersonLinksSelfIriTemplate':
          return PersonLinksSelfIriTemplate.fromJson(value);
        case 'PersonPatch':
          return PersonPatch.fromJson(value);
        case 'PersonPatchAgreement':
          return PersonPatchAgreement.fromJson(value);
        case 'PersonPatchPreferences':
          return PersonPatchPreferences.fromJson(value);
        case 'PersonPatchPreferencesNotification':
          return PersonPatchPreferencesNotification.fromJson(value);
        case 'PersonPreferences':
          return PersonPreferences.fromJson(value);
        case 'Place':
          return Place.fromJson(value);
        case 'PlaceCollection':
          return PlaceCollection.fromJson(value);
        case 'PlaceData':
          return PlaceData.fromJson(value);
        case 'PlaceEmbedded':
          return PlaceEmbedded.fromJson(value);
        case 'PlaceGeoShape':
          return PlaceGeoShape.fromJson(value);
        case 'PlaceLinks':
          return PlaceLinks.fromJson(value);
        case 'PlaceLinksGeo':
          return PlaceLinksGeo.fromJson(value);
        case 'PlaceLinksGeoIriTemplate':
          return PlaceLinksGeoIriTemplate.fromJson(value);
        case 'PlaceLinksOrganization':
          return PlaceLinksOrganization.fromJson(value);
        case 'PlaceLinksOrganizationIriTemplate':
          return PlaceLinksOrganizationIriTemplate.fromJson(value);
        case 'PlaceLinksSelf':
          return PlaceLinksSelf.fromJson(value);
        case 'PlaceLinksSelfIriTemplate':
          return PlaceLinksSelfIriTemplate.fromJson(value);
        case 'PlacePatch':
          return PlacePatch.fromJson(value);
        case 'PlacePostalAddress':
          return PlacePostalAddress.fromJson(value);
        case 'PlacePreferences':
          return PlacePreferences.fromJson(value);
        case 'Plan':
          return Plan.fromJson(value);
        case 'PlanCollection':
          return PlanCollection.fromJson(value);
        case 'PlanData':
          return PlanData.fromJson(value);
        case 'PlanLinks':
          return PlanLinks.fromJson(value);
        case 'PlanLinksImage':
          return PlanLinksImage.fromJson(value);
        case 'PlanLinksImageIriTemplate':
          return PlanLinksImageIriTemplate.fromJson(value);
        case 'PlanLinksPlace':
          return PlanLinksPlace.fromJson(value);
        case 'PlanLinksPlaceIriTemplate':
          return PlanLinksPlaceIriTemplate.fromJson(value);
        case 'PlanLinksSelf':
          return PlanLinksSelf.fromJson(value);
        case 'PlanLinksSelfIriTemplate':
          return PlanLinksSelfIriTemplate.fromJson(value);
        case 'PlanPatch':
          return PlanPatch.fromJson(value);
        case 'Point':
          return Point.fromJson(value);
        case 'Polygon':
          return Polygon.fromJson(value);
        case 'PreferencesNotification':
          return PreferencesNotification.fromJson(value);
        case 'PreferencesReference':
          return PreferencesReference.fromJson(value);
        case 'PropertyConditionList':
          return PropertyConditionList.fromJson(value);
        case 'PropertyItems':
          return PropertyItems.fromJson(value);
        case 'Publication':
          return Publication.fromJson(value);
        case 'PublicationCollection':
          return PublicationCollection.fromJson(value);
        case 'PublicationData':
          return PublicationData.fromJson(value);
        case 'PublicationEmbedded':
          return PublicationEmbedded.fromJson(value);
        case 'PublicationLinks':
          return PublicationLinks.fromJson(value);
        case 'PublicationLinksAuthor':
          return PublicationLinksAuthor.fromJson(value);
        case 'PublicationLinksAuthorIriTemplate':
          return PublicationLinksAuthorIriTemplate.fromJson(value);
        case 'PublicationLinksFeed':
          return PublicationLinksFeed.fromJson(value);
        case 'PublicationLinksFeedIriTemplate':
          return PublicationLinksFeedIriTemplate.fromJson(value);
        case 'PublicationLinksOrganization':
          return PublicationLinksOrganization.fromJson(value);
        case 'PublicationLinksOrganizationIriTemplate':
          return PublicationLinksOrganizationIriTemplate.fromJson(value);
        case 'PublicationLinksSelf':
          return PublicationLinksSelf.fromJson(value);
        case 'PublicationLinksSelfIriTemplate':
          return PublicationLinksSelfIriTemplate.fromJson(value);
        case 'PublicationLinksSelfIriTemplateMapping':
          return PublicationLinksSelfIriTemplateMapping.fromJson(value);
        case 'RegisterData':
          return RegisterData.fromJson(value);
        case 'RegisterDataAgreement':
          return RegisterDataAgreement.fromJson(value);
        case 'Report':
          return Report.fromJson(value);
        case 'ReportCollection':
          return ReportCollection.fromJson(value);
        case 'ReportEmbedded':
          return ReportEmbedded.fromJson(value);
        case 'ReportEmbeddedTargetGroups':
          return ReportEmbeddedTargetGroups.fromJson(value);
        case 'ReportLinks':
          return ReportLinks.fromJson(value);
        case 'ReportLinksCategory':
          return ReportLinksCategory.fromJson(value);
        case 'ReportLinksCategoryIriTemplate':
          return ReportLinksCategoryIriTemplate.fromJson(value);
        case 'ReportLinksFeedback':
          return ReportLinksFeedback.fromJson(value);
        case 'ReportLinksFeedbackIriTemplate':
          return ReportLinksFeedbackIriTemplate.fromJson(value);
        case 'ReportLinksOperations':
          return ReportLinksOperations.fromJson(value);
        case 'ReportLinksOperationsIriTemplate':
          return ReportLinksOperationsIriTemplate.fromJson(value);
        case 'ReportLinksOrganization':
          return ReportLinksOrganization.fromJson(value);
        case 'ReportLinksOrganizationIriTemplate':
          return ReportLinksOrganizationIriTemplate.fromJson(value);
        case 'ReportLinksPlace':
          return ReportLinksPlace.fromJson(value);
        case 'ReportLinksPlaceIriTemplate':
          return ReportLinksPlaceIriTemplate.fromJson(value);
        case 'ReportLinksSelf':
          return ReportLinksSelf.fromJson(value);
        case 'ReportLinksSelfIriTemplate':
          return ReportLinksSelfIriTemplate.fromJson(value);
        case 'ReportLinksTracking':
          return ReportLinksTracking.fromJson(value);
        case 'ReportLinksTrackingIriTemplate':
          return ReportLinksTrackingIriTemplate.fromJson(value);
        case 'ReportPatch':
          return ReportPatch.fromJson(value);
        case 'ReportPriority':
          return ReportPriority.fromJson(value);
        case 'ReportTypePriority':
          return ReportTypePriority.fromJson(value);
        case 'ReportTypeWorkflow':
          return ReportTypeWorkflow.fromJson(value);
        case 'ResetPasswordData':
          return ResetPasswordData.fromJson(value);
        case 'Review':
          return Review.fromJson(value);
        case 'ReviewCollection':
          return ReviewCollection.fromJson(value);
        case 'ReviewData':
          return ReviewData.fromJson(value);
        case 'ReviewLinks':
          return ReviewLinks.fromJson(value);
        case 'ReviewLinksAuthor':
          return ReviewLinksAuthor.fromJson(value);
        case 'ReviewLinksAuthorIriTemplate':
          return ReviewLinksAuthorIriTemplate.fromJson(value);
        case 'ReviewLinksItemReviewed':
          return ReviewLinksItemReviewed.fromJson(value);
        case 'ReviewLinksItemReviewedIriTemplate':
          return ReviewLinksItemReviewedIriTemplate.fromJson(value);
        case 'ReviewLinksSelf':
          return ReviewLinksSelf.fromJson(value);
        case 'ReviewLinksSelfIriTemplate':
          return ReviewLinksSelfIriTemplate.fromJson(value);
        case 'ReviewLinksSelfIriTemplateMapping':
          return ReviewLinksSelfIriTemplateMapping.fromJson(value);
        case 'ReviewRequest':
          return ReviewRequest.fromJson(value);
        case 'ReviewRequestCollection':
          return ReviewRequestCollection.fromJson(value);
        case 'ReviewRequestEmbedded':
          return ReviewRequestEmbedded.fromJson(value);
        case 'ReviewRequestLinks':
          return ReviewRequestLinks.fromJson(value);
        case 'ReviewRequestLinksItemToReview':
          return ReviewRequestLinksItemToReview.fromJson(value);
        case 'ReviewRequestLinksItemToReviewIriTemplate':
          return ReviewRequestLinksItemToReviewIriTemplate.fromJson(value);
        case 'ReviewRequestLinksOrganization':
          return ReviewRequestLinksOrganization.fromJson(value);
        case 'ReviewRequestLinksOrganizationIriTemplate':
          return ReviewRequestLinksOrganizationIriTemplate.fromJson(value);
        case 'ReviewRequestLinksReview':
          return ReviewRequestLinksReview.fromJson(value);
        case 'ReviewRequestLinksReviewIriTemplate':
          return ReviewRequestLinksReviewIriTemplate.fromJson(value);
        case 'ReviewRequestLinksReviewer':
          return ReviewRequestLinksReviewer.fromJson(value);
        case 'ReviewRequestLinksReviewerIriTemplate':
          return ReviewRequestLinksReviewerIriTemplate.fromJson(value);
        case 'ReviewRequestLinksSelf':
          return ReviewRequestLinksSelf.fromJson(value);
        case 'ReviewRequestLinksSelfIriTemplate':
          return ReviewRequestLinksSelfIriTemplate.fromJson(value);
        case 'ReviewRequestLinksSelfIriTemplateMapping':
          return ReviewRequestLinksSelfIriTemplateMapping.fromJson(value);
        case 'Role':
          return Role.fromJson(value);
        case 'Rule':
          return Rule.fromJson(value);
        case 'RuleCollection':
          return RuleCollection.fromJson(value);
        case 'RuleData':
          return RuleData.fromJson(value);
        case 'RuleEmbedded':
          return RuleEmbedded.fromJson(value);
        case 'RuleLinks':
          return RuleLinks.fromJson(value);
        case 'RuleLinksSelf':
          return RuleLinksSelf.fromJson(value);
        case 'RuleLinksSelfIriTemplate':
          return RuleLinksSelfIriTemplate.fromJson(value);
        case 'RuleLinksSelfIriTemplateMapping':
          return RuleLinksSelfIriTemplateMapping.fromJson(value);
        case 'RulePatch':
          return RulePatch.fromJson(value);
        case 'Schema':
          return Schema.fromJson(value);
        case 'SchemaProperty':
          return SchemaProperty.fromJson(value);
        case 'Section':
          return Section.fromJson(value);
        case 'SectionCollection':
          return SectionCollection.fromJson(value);
        case 'SectionLinks':
          return SectionLinks.fromJson(value);
        case 'SectionLinksSelf':
          return SectionLinksSelf.fromJson(value);
        case 'SectionLinksSelfIriTemplate':
          return SectionLinksSelfIriTemplate.fromJson(value);
        case 'Service':
          return Service.fromJson(value);
        case 'ServiceCollection':
          return ServiceCollection.fromJson(value);
        case 'ServiceContactPoint':
          return ServiceContactPoint.fromJson(value);
        case 'ServiceMemberData':
          return ServiceMemberData.fromJson(value);
        case 'ServicePostalAddress':
          return ServicePostalAddress.fromJson(value);
        case 'SignatureData':
          return SignatureData.fromJson(value);
        case 'SignatureSigner':
          return SignatureSigner.fromJson(value);
        case 'Signer':
          return Signer.fromJson(value);
        case 'SignerData':
          return SignerData.fromJson(value);
        case 'SignerEmbedded':
          return SignerEmbedded.fromJson(value);
        case 'SignerLinks':
          return SignerLinks.fromJson(value);
        case 'SignerLinksSelf':
          return SignerLinksSelf.fromJson(value);
        case 'SignerLinksSelfIriTemplate':
          return SignerLinksSelfIriTemplate.fromJson(value);
        case 'SignerLinksSelfIriTemplateMapping':
          return SignerLinksSelfIriTemplateMapping.fromJson(value);
        case 'SignerSignature':
          return SignerSignature.fromJson(value);
        case 'State':
          return State.fromJson(value);
        case 'SuccessLogin':
          return SuccessLogin.fromJson(value);
        case 'SuccessLoginCredentials':
          return SuccessLoginCredentials.fromJson(value);
        case 'Tracking':
          return Tracking.fromJson(value);
        case 'TrackingCheckpoint':
          return TrackingCheckpoint.fromJson(value);
        case 'TrackingProgression':
          return TrackingProgression.fromJson(value);
        case 'TransitionState':
          return TransitionState.fromJson(value);
        case 'Webhook':
          return Webhook.fromJson(value);
        case 'WebhookCollection':
          return WebhookCollection.fromJson(value);
        case 'WebhookData':
          return WebhookData.fromJson(value);
        case 'WebhookLinks':
          return WebhookLinks.fromJson(value);
        case 'WebhookLinksOrganization':
          return WebhookLinksOrganization.fromJson(value);
        case 'WebhookLinksOrganizationIriTemplate':
          return WebhookLinksOrganizationIriTemplate.fromJson(value);
        case 'WebhookLinksSelf':
          return WebhookLinksSelf.fromJson(value);
        case 'WebhookLinksSelfIriTemplate':
          return WebhookLinksSelfIriTemplate.fromJson(value);
        case 'WebhookLinksSelfIriTemplateMapping':
          return WebhookLinksSelfIriTemplateMapping.fromJson(value);
        case 'WebhookPatch':
          return WebhookPatch.fromJson(value);
        case 'Workflow':
          return Workflow.fromJson(value);
        case 'WorkflowData':
          return WorkflowData.fromJson(value);
        case 'WorkflowLinks':
          return WorkflowLinks.fromJson(value);
        case 'WorkflowLinksSelf':
          return WorkflowLinksSelf.fromJson(value);
        case 'WorkflowLinksSelfIriTemplate':
          return WorkflowLinksSelfIriTemplate.fromJson(value);
        case 'WorkflowLinksSelfIriTemplateMapping':
          return WorkflowLinksSelfIriTemplateMapping.fromJson(value);
        case 'WorkflowState':
          return WorkflowState.fromJson(value);
        case 'WorkflowTransition':
          return WorkflowTransition.fromJson(value);
        case 'ArticlePagination':
          return ArticlePagination.fromJson(value);
        case 'AssignmentPagination':
          return AssignmentPagination.fromJson(value);
        case 'BinaryPagination':
          return BinaryPagination.fromJson(value);
        case 'BookmarkPagination':
          return BookmarkPagination.fromJson(value);
        case 'BusinessActivityPagination':
          return BusinessActivityPagination.fromJson(value);
        case 'CategoryPagination':
          return CategoryPagination.fromJson(value);
        case 'ContributionPagination':
          return ContributionPagination.fromJson(value);
        case 'DocumentPagination':
          return DocumentPagination.fromJson(value);
        case 'ExternalServicePagination':
          return ExternalServicePagination.fromJson(value);
        case 'FeedPagination':
          return FeedPagination.fromJson(value);
        case 'FeedbackPagination':
          return FeedbackPagination.fromJson(value);
        case 'InternalServicePagination':
          return InternalServicePagination.fromJson(value);
        case 'MemberPagination':
          return MemberPagination.fromJson(value);
        case 'OccupantPagination':
          return OccupantPagination.fromJson(value);
        case 'OperationPagination':
          return OperationPagination.fromJson(value);
        case 'OrganizationPagination':
          return OrganizationPagination.fromJson(value);
        case 'PlacePagination':
          return PlacePagination.fromJson(value);
        case 'PlanPagination':
          return PlanPagination.fromJson(value);
        case 'PublicationPagination':
          return PublicationPagination.fromJson(value);
        case 'ReportPagination':
          return ReportPagination.fromJson(value);
        case 'ReviewPagination':
          return ReviewPagination.fromJson(value);
        case 'ReviewRequestPagination':
          return ReviewRequestPagination.fromJson(value);
        case 'RulePagination':
          return RulePagination.fromJson(value);
        case 'SectionPagination':
          return SectionPagination.fromJson(value);
        case 'ServicePagination':
          return ServicePagination.fromJson(value);
        case 'WebhookPagination':
          return WebhookPagination.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              return value
                  .map((dynamic v) => _deserialize(v, match[1]))
                  .toList();
            }

            if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, match[1])));
            }
          }
      }
    } catch (exception, stack) {
      throw ApiException.withInner(
          500,
          'Exception during deserialization with type: $targetType.',
          exception,
          stack);
    }

    throw ApiException(
        500, 'Could not find a suitable class for deserialization');
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError("Authentication undefined: $authName");
      }
      auth.applyToParams(queryParams, headerParams);
    });
  }
}
