part of keyclic_sdk_api.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {
  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = RegExp(r'^List<(.*)>$');
  final _RegMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "https://api.keyclic.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
    //_authentications['bearer'] = ApiKeyAuth("header", "Authorization");
    _authentications['bearer'] = OAuth();
  }

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
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
        case 'ActivityGroup':
          return ActivityGroup.fromJson(value);
        case 'ActivityPagination':
          return ActivityPagination.fromJson(value);
        case 'ActivitySubject':
          return ActivitySubject.fromJson(value);
        case 'Application':
          return Application.fromJson(value);
        case 'ApplicationLinks':
          return ApplicationLinks.fromJson(value);
        case 'ApplicationLinksSelf':
          return ApplicationLinksSelf.fromJson(value);
        case 'ApplicationLinksSelfIriTemplate':
          return ApplicationLinksSelfIriTemplate.fromJson(value);
        case 'ApplicationLinksSelfIriTemplateMapping':
          return ApplicationLinksSelfIriTemplateMapping.fromJson(value);
        case 'BusinessActivity':
          return BusinessActivity.fromJson(value);
        case 'BusinessActivityCollection':
          return BusinessActivityCollection.fromJson(value);
        case 'BusinessActivityLinks':
          return BusinessActivityLinks.fromJson(value);
        case 'BusinessActivityLinksImage':
          return BusinessActivityLinksImage.fromJson(value);
        case 'BusinessActivityLinksSchema':
          return BusinessActivityLinksSchema.fromJson(value);
        case 'BusinessActivityLinksSelf':
          return BusinessActivityLinksSelf.fromJson(value);
        case 'BusinessActivityLinksSelfIriTemplate':
          return BusinessActivityLinksSelfIriTemplate.fromJson(value);
        case 'BusinessActivityLinksSelfIriTemplateMapping':
          return BusinessActivityLinksSelfIriTemplateMapping.fromJson(value);
        case 'BusinessActivityMetadataSchema':
          return BusinessActivityMetadataSchema.fromJson(value);
        case 'BusinessActivityPagination':
          return BusinessActivityPagination.fromJson(value);
        case 'Category':
          return Category.fromJson(value);
        case 'CategoryCollection':
          return CategoryCollection.fromJson(value);
        case 'CategoryData':
          return CategoryData.fromJson(value);
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
        case 'CategoryPagination':
          return CategoryPagination.fromJson(value);
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
        case 'Choice':
          return Choice.fromJson(value);
        case 'CommentData':
          return CommentData.fromJson(value);
        case 'Condition':
          return Condition.fromJson(value);
        case 'DelegateData':
          return DelegateData.fromJson(value);
        case 'Delegation':
          return Delegation.fromJson(value);
        case 'DelegationLinks':
          return DelegationLinks.fromJson(value);
        case 'DelegationLinksCreatedBy':
          return DelegationLinksCreatedBy.fromJson(value);
        case 'DelegationLinksCreatedByIriTemplate':
          return DelegationLinksCreatedByIriTemplate.fromJson(value);
        case 'DelegationLinksCreatedByIriTemplateMapping':
          return DelegationLinksCreatedByIriTemplateMapping.fromJson(value);
        case 'DelegationLinksFrom':
          return DelegationLinksFrom.fromJson(value);
        case 'DelegationLinksReport':
          return DelegationLinksReport.fromJson(value);
        case 'DelegationLinksReportIriTemplate':
          return DelegationLinksReportIriTemplate.fromJson(value);
        case 'DelegationLinksReportIriTemplateMapping':
          return DelegationLinksReportIriTemplateMapping.fromJson(value);
        case 'DelegationLinksSelf':
          return DelegationLinksSelf.fromJson(value);
        case 'DelegationLinksSelfIriTemplate':
          return DelegationLinksSelfIriTemplate.fromJson(value);
        case 'DelegationLinksSelfIriTemplateMapping':
          return DelegationLinksSelfIriTemplateMapping.fromJson(value);
        case 'DelegationLinksTo':
          return DelegationLinksTo.fromJson(value);
        case 'Device':
          return Device.fromJson(value);
        case 'DeviceData':
          return DeviceData.fromJson(value);
        case 'DeviceLinks':
          return DeviceLinks.fromJson(value);
        case 'DeviceLinksPerson':
          return DeviceLinksPerson.fromJson(value);
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
        case 'DocumentFile':
          return DocumentFile.fromJson(value);
        case 'DocumentLinks':
          return DocumentLinks.fromJson(value);
        case 'DocumentLinksCreatedBy':
          return DocumentLinksCreatedBy.fromJson(value);
        case 'DocumentLinksFile':
          return DocumentLinksFile.fromJson(value);
        case 'DocumentLinksSelf':
          return DocumentLinksSelf.fromJson(value);
        case 'DocumentLinksSelfIriTemplate':
          return DocumentLinksSelfIriTemplate.fromJson(value);
        case 'DocumentLinksSelfIriTemplateMapping':
          return DocumentLinksSelfIriTemplateMapping.fromJson(value);
        case 'DocumentPagination':
          return DocumentPagination.fromJson(value);
        case 'DocumentPatch':
          return DocumentPatch.fromJson(value);
        case 'DocumentPatchFile':
          return DocumentPatchFile.fromJson(value);
        case 'DocumentPatchPermission':
          return DocumentPatchPermission.fromJson(value);
        case 'DocumentPermission':
          return DocumentPermission.fromJson(value);
        case 'EmailData':
          return EmailData.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'ErrorEmbedded':
          return ErrorEmbedded.fromJson(value);
        case 'FacebookConnectData':
          return FacebookConnectData.fromJson(value);
        case 'Feature':
          return Feature.fromJson(value);
        case 'FeatureGeometry':
          return FeatureGeometry.fromJson(value);
        case 'Feed':
          return Feed.fromJson(value);
        case 'FeedCollection':
          return FeedCollection.fromJson(value);
        case 'FeedPagination':
          return FeedPagination.fromJson(value);
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
        case 'FeedbackGeoCoordinatesPoint':
          return FeedbackGeoCoordinatesPoint.fromJson(value);
        case 'FeedbackLinks':
          return FeedbackLinks.fromJson(value);
        case 'FeedbackLinksBusinessActivity':
          return FeedbackLinksBusinessActivity.fromJson(value);
        case 'FeedbackLinksCategory':
          return FeedbackLinksCategory.fromJson(value);
        case 'FeedbackLinksImage':
          return FeedbackLinksImage.fromJson(value);
        case 'FeedbackLinksImageIriTemplate':
          return FeedbackLinksImageIriTemplate.fromJson(value);
        case 'FeedbackLinksImageIriTemplateMapping':
          return FeedbackLinksImageIriTemplateMapping.fromJson(value);
        case 'FeedbackLinksImages':
          return FeedbackLinksImages.fromJson(value);
        case 'FeedbackLinksReporter':
          return FeedbackLinksReporter.fromJson(value);
        case 'FeedbackLinksSelf':
          return FeedbackLinksSelf.fromJson(value);
        case 'FeedbackLinksSelfIriTemplate':
          return FeedbackLinksSelfIriTemplate.fromJson(value);
        case 'FeedbackLinksSelfIriTemplateMapping':
          return FeedbackLinksSelfIriTemplateMapping.fromJson(value);
        case 'FeedbackLinksTracking':
          return FeedbackLinksTracking.fromJson(value);
        case 'FeedbackPagination':
          return FeedbackPagination.fromJson(value);
        case 'FeedbackReviewRequest':
          return FeedbackReviewRequest.fromJson(value);
        case 'FeedbackReviewRequestCollection':
          return FeedbackReviewRequestCollection.fromJson(value);
        case 'FeedbackReviewRequestLinks':
          return FeedbackReviewRequestLinks.fromJson(value);
        case 'FeedbackReviewRequestLinksItemToReview':
          return FeedbackReviewRequestLinksItemToReview.fromJson(value);
        case 'FeedbackReviewRequestLinksOrganization':
          return FeedbackReviewRequestLinksOrganization.fromJson(value);
        case 'FeedbackReviewRequestLinksReview':
          return FeedbackReviewRequestLinksReview.fromJson(value);
        case 'FeedbackReviewRequestLinksReviewer':
          return FeedbackReviewRequestLinksReviewer.fromJson(value);
        case 'FeedbackReviewRequestLinksSelf':
          return FeedbackReviewRequestLinksSelf.fromJson(value);
        case 'FeedbackReviewRequestLinksSelfIriTemplate':
          return FeedbackReviewRequestLinksSelfIriTemplate.fromJson(value);
        case 'FeedbackReviewRequestLinksSelfIriTemplateMapping':
          return FeedbackReviewRequestLinksSelfIriTemplateMapping.fromJson(
              value);
        case 'FeedbackReviewRequestPagination':
          return FeedbackReviewRequestPagination.fromJson(value);
        case 'FeedbackStatePatch':
          return FeedbackStatePatch.fromJson(value);
        case 'FeedbackWorkflowTransitionData':
          return FeedbackWorkflowTransitionData.fromJson(value);
        case 'Following':
          return Following.fromJson(value);
        case 'FollowingCollection':
          return FollowingCollection.fromJson(value);
        case 'FollowingPagination':
          return FollowingPagination.fromJson(value);
        case 'ImageData':
          return ImageData.fromJson(value);
        case 'LogEntry':
          return LogEntry.fromJson(value);
        case 'LogEntryCollection':
          return LogEntryCollection.fromJson(value);
        case 'LogEntryPagination':
          return LogEntryPagination.fromJson(value);
        case 'LoginData':
          return LoginData.fromJson(value);
        case 'Member':
          return Member.fromJson(value);
        case 'MemberCollection':
          return MemberCollection.fromJson(value);
        case 'MemberData':
          return MemberData.fromJson(value);
        case 'MemberEmbedded':
          return MemberEmbedded.fromJson(value);
        case 'MemberLinks':
          return MemberLinks.fromJson(value);
        case 'MemberLinksOrganization':
          return MemberLinksOrganization.fromJson(value);
        case 'MemberLinksPerson':
          return MemberLinksPerson.fromJson(value);
        case 'MemberLinksSelf':
          return MemberLinksSelf.fromJson(value);
        case 'MemberLinksSelfIriTemplate':
          return MemberLinksSelfIriTemplate.fromJson(value);
        case 'MemberLinksSelfIriTemplateMapping':
          return MemberLinksSelfIriTemplateMapping.fromJson(value);
        case 'MemberPagination':
          return MemberPagination.fromJson(value);
        case 'MemberPatch':
          return MemberPatch.fromJson(value);
        case 'Occupant':
          return Occupant.fromJson(value);
        case 'OccupantCollection':
          return OccupantCollection.fromJson(value);
        case 'OccupantLinks':
          return OccupantLinks.fromJson(value);
        case 'OccupantLinksPerson':
          return OccupantLinksPerson.fromJson(value);
        case 'OccupantLinksPlace':
          return OccupantLinksPlace.fromJson(value);
        case 'OccupantLinksPlaceIriTemplate':
          return OccupantLinksPlaceIriTemplate.fromJson(value);
        case 'OccupantLinksPlaceIriTemplateMapping':
          return OccupantLinksPlaceIriTemplateMapping.fromJson(value);
        case 'OccupantLinksSelf':
          return OccupantLinksSelf.fromJson(value);
        case 'OccupantLinksSelfIriTemplate':
          return OccupantLinksSelfIriTemplate.fromJson(value);
        case 'OccupantLinksSelfIriTemplateMapping':
          return OccupantLinksSelfIriTemplateMapping.fromJson(value);
        case 'OccupantPagination':
          return OccupantPagination.fromJson(value);
        case 'Operation':
          return Operation.fromJson(value);
        case 'OperationCollection':
          return OperationCollection.fromJson(value);
        case 'OperationData':
          return OperationData.fromJson(value);
        case 'OperationLinks':
          return OperationLinks.fromJson(value);
        case 'OperationLinksCreatedBy':
          return OperationLinksCreatedBy.fromJson(value);
        case 'OperationLinksFeedback':
          return OperationLinksFeedback.fromJson(value);
        case 'OperationLinksImage':
          return OperationLinksImage.fromJson(value);
        case 'OperationLinksImageIriTemplate':
          return OperationLinksImageIriTemplate.fromJson(value);
        case 'OperationLinksImageIriTemplateMapping':
          return OperationLinksImageIriTemplateMapping.fromJson(value);
        case 'OperationLinksOperator':
          return OperationLinksOperator.fromJson(value);
        case 'OperationLinksReport':
          return OperationLinksReport.fromJson(value);
        case 'OperationLinksSelf':
          return OperationLinksSelf.fromJson(value);
        case 'OperationLinksSelfIriTemplate':
          return OperationLinksSelfIriTemplate.fromJson(value);
        case 'OperationLinksSelfIriTemplateMapping':
          return OperationLinksSelfIriTemplateMapping.fromJson(value);
        case 'OperationLinksTracking':
          return OperationLinksTracking.fromJson(value);
        case 'OperationPagination':
          return OperationPagination.fromJson(value);
        case 'OperationPatch':
          return OperationPatch.fromJson(value);
        case 'OperationStatePatch':
          return OperationStatePatch.fromJson(value);
        case 'OperationWorkflowTransitionData':
          return OperationWorkflowTransitionData.fromJson(value);
        case 'Organization':
          return Organization.fromJson(value);
        case 'OrganizationCollection':
          return OrganizationCollection.fromJson(value);
        case 'OrganizationData':
          return OrganizationData.fromJson(value);
        case 'OrganizationLinks':
          return OrganizationLinks.fromJson(value);
        case 'OrganizationLinksBusinessActivity':
          return OrganizationLinksBusinessActivity.fromJson(value);
        case 'OrganizationLinksLogo':
          return OrganizationLinksLogo.fromJson(value);
        case 'OrganizationLinksSelf':
          return OrganizationLinksSelf.fromJson(value);
        case 'OrganizationPagination':
          return OrganizationPagination.fromJson(value);
        case 'OrganizationPatch':
          return OrganizationPatch.fromJson(value);
        case 'OrganizationPatchPreferences':
          return OrganizationPatchPreferences.fromJson(value);
        case 'OrganizationPreferences':
          return OrganizationPreferences.fromJson(value);
        case 'OrganizationPreferencesReference':
          return OrganizationPreferencesReference.fromJson(value);
        case 'PaginationLink':
          return PaginationLink.fromJson(value);
        case 'PaginationLinks':
          return PaginationLinks.fromJson(value);
        case 'PasswordData':
          return PasswordData.fromJson(value);
        case 'Person':
          return Person.fromJson(value);
        case 'PersonCollection':
          return PersonCollection.fromJson(value);
        case 'PersonData':
          return PersonData.fromJson(value);
        case 'PersonLinks':
          return PersonLinks.fromJson(value);
        case 'PersonLinksImage':
          return PersonLinksImage.fromJson(value);
        case 'PersonLinksMemberOf':
          return PersonLinksMemberOf.fromJson(value);
        case 'PersonLinksSelf':
          return PersonLinksSelf.fromJson(value);
        case 'PersonPagination':
          return PersonPagination.fromJson(value);
        case 'PersonPatch':
          return PersonPatch.fromJson(value);
        case 'PersonPatchPreferences':
          return PersonPatchPreferences.fromJson(value);
        case 'PersonPreferences':
          return PersonPreferences.fromJson(value);
        case 'Place':
          return Place.fromJson(value);
        case 'PlaceCollection':
          return PlaceCollection.fromJson(value);
        case 'PlaceData':
          return PlaceData.fromJson(value);
        case 'PlaceGeo':
          return PlaceGeo.fromJson(value);
        case 'PlaceGeoCentroid':
          return PlaceGeoCentroid.fromJson(value);
        case 'PlaceGeoPolygon':
          return PlaceGeoPolygon.fromJson(value);
        case 'PlaceLinks':
          return PlaceLinks.fromJson(value);
        case 'PlaceLinksContainedInPlace':
          return PlaceLinksContainedInPlace.fromJson(value);
        case 'PlaceLinksContainsPlaces':
          return PlaceLinksContainsPlaces.fromJson(value);
        case 'PlaceLinksContainsPlacesIriTemplate':
          return PlaceLinksContainsPlacesIriTemplate.fromJson(value);
        case 'PlaceLinksContainsPlacesIriTemplateMapping':
          return PlaceLinksContainsPlacesIriTemplateMapping.fromJson(value);
        case 'PlaceLinksOrganization':
          return PlaceLinksOrganization.fromJson(value);
        case 'PlaceLinksSelf':
          return PlaceLinksSelf.fromJson(value);
        case 'PlacePagination':
          return PlacePagination.fromJson(value);
        case 'PlacePatch':
          return PlacePatch.fromJson(value);
        case 'Property':
          return Property.fromJson(value);
        case 'PropertyConditions':
          return PropertyConditions.fromJson(value);
        case 'PropertyItems':
          return PropertyItems.fromJson(value);
        case 'Publication':
          return Publication.fromJson(value);
        case 'PublicationCollection':
          return PublicationCollection.fromJson(value);
        case 'PublicationData':
          return PublicationData.fromJson(value);
        case 'PublicationLinks':
          return PublicationLinks.fromJson(value);
        case 'PublicationLinksAuthor':
          return PublicationLinksAuthor.fromJson(value);
        case 'PublicationLinksOrganization':
          return PublicationLinksOrganization.fromJson(value);
        case 'PublicationLinksPlace':
          return PublicationLinksPlace.fromJson(value);
        case 'PublicationLinksSelf':
          return PublicationLinksSelf.fromJson(value);
        case 'PublicationLinksSelfIriTemplate':
          return PublicationLinksSelfIriTemplate.fromJson(value);
        case 'PublicationLinksSelfIriTemplateMapping':
          return PublicationLinksSelfIriTemplateMapping.fromJson(value);
        case 'PublicationPagination':
          return PublicationPagination.fromJson(value);
        case 'RegisterData':
          return RegisterData.fromJson(value);
        case 'RelationshipData':
          return RelationshipData.fromJson(value);
        case 'Report':
          return Report.fromJson(value);
        case 'ReportCollection':
          return ReportCollection.fromJson(value);
        case 'ReportEmbedded':
          return ReportEmbedded.fromJson(value);
        case 'ReportEmbeddedDuration':
          return ReportEmbeddedDuration.fromJson(value);
        case 'ReportEmbeddedTargetGroups':
          return ReportEmbeddedTargetGroups.fromJson(value);
        case 'ReportLinks':
          return ReportLinks.fromJson(value);
        case 'ReportLinksCategory':
          return ReportLinksCategory.fromJson(value);
        case 'ReportLinksDelegatedFrom':
          return ReportLinksDelegatedFrom.fromJson(value);
        case 'ReportLinksDelegatedTo':
          return ReportLinksDelegatedTo.fromJson(value);
        case 'ReportLinksFeedback':
          return ReportLinksFeedback.fromJson(value);
        case 'ReportLinksOperations':
          return ReportLinksOperations.fromJson(value);
        case 'ReportLinksOrganization':
          return ReportLinksOrganization.fromJson(value);
        case 'ReportLinksPlace':
          return ReportLinksPlace.fromJson(value);
        case 'ReportLinksSelf':
          return ReportLinksSelf.fromJson(value);
        case 'ReportLinksTracking':
          return ReportLinksTracking.fromJson(value);
        case 'ReportPagination':
          return ReportPagination.fromJson(value);
        case 'ReportPatch':
          return ReportPatch.fromJson(value);
        case 'ReportPatchCategory':
          return ReportPatchCategory.fromJson(value);
        case 'ReportStatePatch':
          return ReportStatePatch.fromJson(value);
        case 'ReportWorkflowTransitionData':
          return ReportWorkflowTransitionData.fromJson(value);
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
        case 'ReviewLinksSelf':
          return ReviewLinksSelf.fromJson(value);
        case 'ReviewLinksSelfIriTemplate':
          return ReviewLinksSelfIriTemplate.fromJson(value);
        case 'ReviewLinksSelfIriTemplateMapping':
          return ReviewLinksSelfIriTemplateMapping.fromJson(value);
        case 'ReviewPagination':
          return ReviewPagination.fromJson(value);
        case 'Schema':
          return Schema.fromJson(value);
        case 'Service':
          return Service.fromJson(value);
        case 'ServiceCollection':
          return ServiceCollection.fromJson(value);
        case 'ServiceContactPoint':
          return ServiceContactPoint.fromJson(value);
        case 'ServiceLinks':
          return ServiceLinks.fromJson(value);
        case 'ServiceLinksOrganization':
          return ServiceLinksOrganization.fromJson(value);
        case 'ServicePagination':
          return ServicePagination.fromJson(value);
        case 'SignatureData':
          return SignatureData.fromJson(value);
        case 'SignatureDataSigner':
          return SignatureDataSigner.fromJson(value);
        case 'SuccessLogin':
          return SuccessLogin.fromJson(value);
        case 'SuccessLoginCredentials':
          return SuccessLoginCredentials.fromJson(value);
        case 'SuccessLoginCredentialsAdministratorOf':
          return SuccessLoginCredentialsAdministratorOf.fromJson(value);
        case 'SuccessLoginCredentialsMemberOf':
          return SuccessLoginCredentialsMemberOf.fromJson(value);
        case 'SuccessLoginCredentialsOrganization':
          return SuccessLoginCredentialsOrganization.fromJson(value);
        case 'Tracking':
          return Tracking.fromJson(value);
        case 'TrackingProgression':
          return TrackingProgression.fromJson(value);
        case 'Webhook':
          return Webhook.fromJson(value);
        case 'WebhookCollection':
          return WebhookCollection.fromJson(value);
        case 'WebhookLinks':
          return WebhookLinks.fromJson(value);
        case 'WebhookLinksOrganization':
          return WebhookLinksOrganization.fromJson(value);
        case 'WebhookLinksSelf':
          return WebhookLinksSelf.fromJson(value);
        case 'WebhookLinksSelfIriTemplate':
          return WebhookLinksSelfIriTemplate.fromJson(value);
        case 'WebhookLinksSelfIriTemplateMapping':
          return WebhookLinksSelfIriTemplateMapping.fromJson(value);
        case 'WebhookPagination':
          return WebhookPagination.fromJson(value);
        case 'WebhookPatch':
          return WebhookPatch.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw ApiException.withInner(
          500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(
        500, 'Could not find a suitable class for deserialization');
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

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<QueryParam> queryParams,
      Object body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
        .where((p) => p.value != null)
        .map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ? '?' + ps.join('&') : '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if (body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
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
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames,
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError("Authentication undefined: " + authName);
      }
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
