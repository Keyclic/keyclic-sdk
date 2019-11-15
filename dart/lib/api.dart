library keyclic_sdk_api.api;

import 'dart:async';
import 'dart:convert';
import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/application_api.dart';
part 'api/business_activity_api.dart';
part 'api/category_api.dart';
part 'api/contribution_api.dart';
part 'api/delegation_api.dart';
part 'api/device_api.dart';
part 'api/document_api.dart';
part 'api/external_service_api.dart';
part 'api/feed_api.dart';
part 'api/feedback_api.dart';
part 'api/internal_service_api.dart';
part 'api/member_api.dart';
part 'api/occupant_api.dart';
part 'api/operation_api.dart';
part 'api/organization_api.dart';
part 'api/person_api.dart';
part 'api/place_api.dart';
part 'api/publication_api.dart';
part 'api/report_api.dart';
part 'api/review_api.dart';
part 'api/review_request_api.dart';
part 'api/security_api.dart';
part 'api/webhook_api.dart';

part 'model/activity.dart';
part 'model/activity_aggregated_pagination.dart';
part 'model/activity_group.dart';
part 'model/activity_pagination.dart';
part 'model/activity_subject.dart';
part 'model/application.dart';
part 'model/application_agreement.dart';
part 'model/application_agreement_older_than.dart';
part 'model/application_links.dart';
part 'model/application_links_self.dart';
part 'model/application_links_self_iri_template.dart';
part 'model/application_links_self_iri_template_mapping.dart';
part 'model/assign_data.dart';
part 'model/business_activity.dart';
part 'model/business_activity_collection.dart';
part 'model/business_activity_links.dart';
part 'model/business_activity_links_image.dart';
part 'model/business_activity_links_image_iri_template.dart';
part 'model/business_activity_links_image_iri_template_mapping.dart';
part 'model/business_activity_links_schema.dart';
part 'model/business_activity_links_schema_iri_template.dart';
part 'model/business_activity_links_self.dart';
part 'model/business_activity_links_self_iri_template.dart';
part 'model/business_activity_links_thumbnail.dart';
part 'model/business_activity_links_thumbnail_iri_template.dart';
part 'model/business_activity_metadata_schema.dart';
part 'model/category.dart';
part 'model/category_collection.dart';
part 'model/category_data.dart';
part 'model/category_links.dart';
part 'model/category_links_organization.dart';
part 'model/category_links_organization_iri_template.dart';
part 'model/category_links_organization_iri_template_mapping.dart';
part 'model/category_links_self.dart';
part 'model/category_links_self_iri_template.dart';
part 'model/category_links_self_iri_template_mapping.dart';
part 'model/category_patch.dart';
part 'model/chart.dart';
part 'model/checkpoint.dart';
part 'model/checkpoint_links.dart';
part 'model/checkpoint_links_organization.dart';
part 'model/checkpoint_links_organization_iri_template.dart';
part 'model/choice.dart';
part 'model/comment_data.dart';
part 'model/condition.dart';
part 'model/contribution.dart';
part 'model/contribution_collection.dart';
part 'model/contribution_data.dart';
part 'model/contribution_links.dart';
part 'model/contribution_links_contributor.dart';
part 'model/contribution_links_contributor_iri_template.dart';
part 'model/contribution_links_contributor_iri_template_mapping.dart';
part 'model/contribution_links_feedback.dart';
part 'model/contribution_links_feedback_iri_template.dart';
part 'model/contribution_links_feedback_iri_template_mapping.dart';
part 'model/delegation.dart';
part 'model/delegation_collection.dart';
part 'model/delegation_data.dart';
part 'model/delegation_embedded.dart';
part 'model/delegation_links.dart';
part 'model/delegation_links_created_by.dart';
part 'model/delegation_links_created_by_iri_template.dart';
part 'model/delegation_links_report.dart';
part 'model/delegation_links_report_iri_template.dart';
part 'model/delegation_links_report_iri_template_mapping.dart';
part 'model/delegation_links_self.dart';
part 'model/delegation_links_self_iri_template.dart';
part 'model/delegation_links_self_iri_template_mapping.dart';
part 'model/delegation_links_service.dart';
part 'model/delegation_links_service_iri_template.dart';
part 'model/delegation_links_service_iri_template_mapping.dart';
part 'model/delegation_workflow_transition_data.dart';
part 'model/device.dart';
part 'model/device_data.dart';
part 'model/device_links.dart';
part 'model/device_links_person.dart';
part 'model/device_links_person_iri_template.dart';
part 'model/device_links_self.dart';
part 'model/device_links_self_iri_template.dart';
part 'model/device_links_self_iri_template_mapping.dart';
part 'model/document.dart';
part 'model/document_collection.dart';
part 'model/document_data.dart';
part 'model/document_data_file.dart';
part 'model/document_data_permission.dart';
part 'model/document_file.dart';
part 'model/document_links.dart';
part 'model/document_links_created_by.dart';
part 'model/document_links_created_by_iri_template.dart';
part 'model/document_links_file.dart';
part 'model/document_links_file_iri_template.dart';
part 'model/document_links_file_iri_template_mapping.dart';
part 'model/document_links_self.dart';
part 'model/document_links_self_iri_template.dart';
part 'model/document_patch.dart';
part 'model/document_patch_file.dart';
part 'model/document_permission.dart';
part 'model/error.dart';
part 'model/error_embedded.dart';
part 'model/external_service.dart';
part 'model/external_service_collection.dart';
part 'model/external_service_contact_point.dart';
part 'model/external_service_data.dart';
part 'model/external_service_links.dart';
part 'model/external_service_links_provider.dart';
part 'model/external_service_links_provider_iri_template.dart';
part 'model/external_service_links_self.dart';
part 'model/external_service_links_self_iri_template.dart';
part 'model/external_service_patch.dart';
part 'model/external_service_patch_contact_point.dart';
part 'model/facebook_connect_data.dart';
part 'model/feature.dart';
part 'model/feature_geometry.dart';
part 'model/feed.dart';
part 'model/feed_collection.dart';
part 'model/feedback.dart';
part 'model/feedback_collection.dart';
part 'model/feedback_data.dart';
part 'model/feedback_data_geo.dart';
part 'model/feedback_data_geo_point.dart';
part 'model/feedback_embedded.dart';
part 'model/feedback_geo_coordinates.dart';
part 'model/feedback_geo_coordinates_point.dart';
part 'model/feedback_links.dart';
part 'model/feedback_links_business_activity.dart';
part 'model/feedback_links_business_activity_iri_template.dart';
part 'model/feedback_links_category.dart';
part 'model/feedback_links_category_iri_template.dart';
part 'model/feedback_links_image.dart';
part 'model/feedback_links_image_iri_template.dart';
part 'model/feedback_links_image_iri_template_mapping.dart';
part 'model/feedback_links_images.dart';
part 'model/feedback_links_images_iri_template.dart';
part 'model/feedback_links_reporter.dart';
part 'model/feedback_links_reporter_iri_template.dart';
part 'model/feedback_links_self.dart';
part 'model/feedback_links_self_iri_template.dart';
part 'model/feedback_links_tracking.dart';
part 'model/feedback_links_tracking_iri_template.dart';
part 'model/feedback_review_request.dart';
part 'model/feedback_review_request_collection.dart';
part 'model/feedback_review_request_links.dart';
part 'model/feedback_review_request_links_item_to_review.dart';
part 'model/feedback_review_request_links_item_to_review_iri_template.dart';
part 'model/feedback_review_request_links_organization.dart';
part 'model/feedback_review_request_links_organization_iri_template.dart';
part 'model/feedback_review_request_links_review.dart';
part 'model/feedback_review_request_links_review_iri_template.dart';
part 'model/feedback_review_request_links_review_iri_template_mapping.dart';
part 'model/feedback_review_request_links_reviewer.dart';
part 'model/feedback_review_request_links_reviewer_iri_template.dart';
part 'model/feedback_review_request_links_self.dart';
part 'model/feedback_review_request_links_self_iri_template.dart';
part 'model/feedback_review_request_links_self_iri_template_mapping.dart';
part 'model/feedback_workflow_transition_data.dart';
part 'model/image_data.dart';
part 'model/internal_service.dart';
part 'model/internal_service_collection.dart';
part 'model/internal_service_data.dart';
part 'model/internal_service_links.dart';
part 'model/internal_service_links_organization.dart';
part 'model/internal_service_links_organization_iri_template.dart';
part 'model/internal_service_links_self.dart';
part 'model/internal_service_links_self_iri_template.dart';
part 'model/internal_service_links_self_iri_template_mapping.dart';
part 'model/internal_service_patch.dart';
part 'model/login_data.dart';
part 'model/member.dart';
part 'model/member_collection.dart';
part 'model/member_data.dart';
part 'model/member_embedded.dart';
part 'model/member_links.dart';
part 'model/member_links_organization.dart';
part 'model/member_links_organization_iri_template.dart';
part 'model/member_links_person.dart';
part 'model/member_links_person_iri_template.dart';
part 'model/member_links_self.dart';
part 'model/member_links_self_iri_template.dart';
part 'model/member_links_self_iri_template_mapping.dart';
part 'model/member_patch.dart';
part 'model/node.dart';
part 'model/node_embedded.dart';
part 'model/node_path.dart';
part 'model/occupant.dart';
part 'model/occupant_collection.dart';
part 'model/occupant_data.dart';
part 'model/occupant_links.dart';
part 'model/occupant_links_person.dart';
part 'model/occupant_links_person_iri_template.dart';
part 'model/occupant_links_place.dart';
part 'model/occupant_links_place_iri_template.dart';
part 'model/occupant_links_place_iri_template_mapping.dart';
part 'model/occupant_links_self.dart';
part 'model/occupant_links_self_iri_template.dart';
part 'model/occupant_links_self_iri_template_mapping.dart';
part 'model/operation.dart';
part 'model/operation_collection.dart';
part 'model/operation_data.dart';
part 'model/operation_embedded.dart';
part 'model/operation_embedded_duration.dart';
part 'model/operation_links.dart';
part 'model/operation_links_created_by.dart';
part 'model/operation_links_created_by_iri_template.dart';
part 'model/operation_links_feedback.dart';
part 'model/operation_links_feedback_iri_template.dart';
part 'model/operation_links_image.dart';
part 'model/operation_links_image_iri_template.dart';
part 'model/operation_links_image_iri_template_mapping.dart';
part 'model/operation_links_images.dart';
part 'model/operation_links_images_iri_template.dart';
part 'model/operation_links_images_iri_template_mapping.dart';
part 'model/operation_links_operator.dart';
part 'model/operation_links_operator_iri_template.dart';
part 'model/operation_links_organization.dart';
part 'model/operation_links_organization_iri_template.dart';
part 'model/operation_links_report.dart';
part 'model/operation_links_report_iri_template.dart';
part 'model/operation_links_self.dart';
part 'model/operation_links_self_iri_template.dart';
part 'model/operation_links_self_iri_template_mapping.dart';
part 'model/operation_links_tracking.dart';
part 'model/operation_links_tracking_iri_template.dart';
part 'model/operation_patch.dart';
part 'model/operation_signature.dart';
part 'model/operation_signature_signer.dart';
part 'model/operation_workflow_transition_data.dart';
part 'model/organization.dart';
part 'model/organization_collection.dart';
part 'model/organization_data.dart';
part 'model/organization_links.dart';
part 'model/organization_links_application.dart';
part 'model/organization_links_application_iri_template.dart';
part 'model/organization_links_business_activity.dart';
part 'model/organization_links_business_activity_iri_template.dart';
part 'model/organization_links_logo.dart';
part 'model/organization_links_logo_iri_template.dart';
part 'model/organization_links_self.dart';
part 'model/organization_links_self_iri_template.dart';
part 'model/organization_patch.dart';
part 'model/organization_patch_preferences.dart';
part 'model/organization_preferences.dart';
part 'model/organization_preferences_notification.dart';
part 'model/organization_preferences_notification_report.dart';
part 'model/organization_preferences_reference.dart';
part 'model/pagination.dart';
part 'model/pagination_link.dart';
part 'model/pagination_links.dart';
part 'model/password_change_data.dart';
part 'model/person.dart';
part 'model/person_agreement.dart';
part 'model/person_collection.dart';
part 'model/person_links.dart';
part 'model/person_links_application.dart';
part 'model/person_links_application_iri_template.dart';
part 'model/person_links_created_by.dart';
part 'model/person_links_created_by_iri_template.dart';
part 'model/person_links_image.dart';
part 'model/person_links_image_iri_template.dart';
part 'model/person_links_self.dart';
part 'model/person_links_self_iri_template.dart';
part 'model/person_patch.dart';
part 'model/person_patch_agreement.dart';
part 'model/person_patch_preferences.dart';
part 'model/person_patch_preferences_notification.dart';
part 'model/person_preferences.dart';
part 'model/person_preferences_notification.dart';
part 'model/place.dart';
part 'model/place_collection.dart';
part 'model/place_data.dart';
part 'model/place_embedded.dart';
part 'model/place_geo.dart';
part 'model/place_geo_centroid.dart';
part 'model/place_geo_polygon.dart';
part 'model/place_links.dart';
part 'model/place_links_contained_in_place.dart';
part 'model/place_links_contained_in_place_iri_template.dart';
part 'model/place_links_contains_places.dart';
part 'model/place_links_contains_places_iri_template.dart';
part 'model/place_links_contains_places_iri_template_mapping.dart';
part 'model/place_links_organization.dart';
part 'model/place_links_organization_iri_template.dart';
part 'model/place_links_self.dart';
part 'model/place_links_self_iri_template.dart';
part 'model/place_patch.dart';
part 'model/place_preferences.dart';
part 'model/property.dart';
part 'model/property_conditions.dart';
part 'model/property_items.dart';
part 'model/publication.dart';
part 'model/publication_collection.dart';
part 'model/publication_data.dart';
part 'model/publication_links.dart';
part 'model/publication_links_author.dart';
part 'model/publication_links_author_iri_template.dart';
part 'model/publication_links_feed.dart';
part 'model/publication_links_feed_iri_template.dart';
part 'model/publication_links_organization.dart';
part 'model/publication_links_organization_iri_template.dart';
part 'model/publication_links_self.dart';
part 'model/publication_links_self_iri_template.dart';
part 'model/publication_links_self_iri_template_mapping.dart';
part 'model/register_data.dart';
part 'model/report.dart';
part 'model/report_collection.dart';
part 'model/report_embedded.dart';
part 'model/report_embedded_target_groups.dart';
part 'model/report_links.dart';
part 'model/report_links_category.dart';
part 'model/report_links_category_iri_template.dart';
part 'model/report_links_delegated_from.dart';
part 'model/report_links_delegated_from_iri_template.dart';
part 'model/report_links_delegated_to.dart';
part 'model/report_links_delegated_to_iri_template.dart';
part 'model/report_links_feedback.dart';
part 'model/report_links_feedback_iri_template.dart';
part 'model/report_links_operations.dart';
part 'model/report_links_operations_iri_template.dart';
part 'model/report_links_organization.dart';
part 'model/report_links_organization_iri_template.dart';
part 'model/report_links_place.dart';
part 'model/report_links_place_iri_template.dart';
part 'model/report_links_self.dart';
part 'model/report_links_self_iri_template.dart';
part 'model/report_links_tracking.dart';
part 'model/report_links_tracking_iri_template.dart';
part 'model/report_patch.dart';
part 'model/report_workflow_transition_data.dart';
part 'model/reset_password_data.dart';
part 'model/review.dart';
part 'model/review_collection.dart';
part 'model/review_data.dart';
part 'model/review_links.dart';
part 'model/review_links_author.dart';
part 'model/review_links_author_iri_template.dart';
part 'model/review_links_item_reviewed.dart';
part 'model/review_links_item_reviewed_iri_template.dart';
part 'model/review_links_self.dart';
part 'model/review_links_self_iri_template.dart';
part 'model/schema.dart';
part 'model/signature_data.dart';
part 'model/signature_data_signer.dart';
part 'model/success_login.dart';
part 'model/success_login_credentials.dart';
part 'model/success_login_credentials_administrator_of.dart';
part 'model/success_login_credentials_member_of.dart';
part 'model/success_login_credentials_organization.dart';
part 'model/tracking.dart';
part 'model/tracking_progression.dart';
part 'model/webhook.dart';
part 'model/webhook_collection.dart';
part 'model/webhook_data.dart';
part 'model/webhook_links.dart';
part 'model/webhook_links_organization.dart';
part 'model/webhook_links_organization_iri_template.dart';
part 'model/webhook_links_self.dart';
part 'model/webhook_links_self_iri_template.dart';
part 'model/webhook_links_self_iri_template_mapping.dart';
part 'model/webhook_patch.dart';
part 'model/business_activity_pagination.dart';
part 'model/category_pagination.dart';
part 'model/contribution_pagination.dart';
part 'model/delegation_pagination.dart';
part 'model/document_pagination.dart';
part 'model/external_service_pagination.dart';
part 'model/feed_pagination.dart';
part 'model/feedback_pagination.dart';
part 'model/feedback_review_request_pagination.dart';
part 'model/internal_service_pagination.dart';
part 'model/member_pagination.dart';
part 'model/occupant_pagination.dart';
part 'model/operation_pagination.dart';
part 'model/organization_pagination.dart';
part 'model/person_pagination.dart';
part 'model/place_pagination.dart';
part 'model/publication_pagination.dart';
part 'model/report_pagination.dart';
part 'model/review_pagination.dart';
part 'model/webhook_pagination.dart';

ApiClient defaultApiClient = ApiClient();
