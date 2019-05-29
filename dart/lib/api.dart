library keyclic_sdk_api.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/analytic_api.dart';
part 'api/application_api.dart';
part 'api/assign_api.dart';
part 'api/business_activity_api.dart';
part 'api/category_api.dart';
part 'api/change_api.dart';
part 'api/comment_api.dart';
part 'api/contribution_api.dart';
part 'api/delegate_api.dart';
part 'api/delegation_api.dart';
part 'api/device_api.dart';
part 'api/document_api.dart';
part 'api/export_api.dart';
part 'api/facebook_api.dart';
part 'api/feed_api.dart';
part 'api/feedback_api.dart';
part 'api/file_api.dart';
part 'api/follow_api.dart';
part 'api/image_api.dart';
part 'api/issue_api.dart';
part 'api/log_api.dart';
part 'api/login_api.dart';
part 'api/logo_api.dart';
part 'api/member_api.dart';
part 'api/membership_api.dart';
part 'api/occupant_api.dart';
part 'api/operation_api.dart';
part 'api/organization_api.dart';
part 'api/person_api.dart';
part 'api/place_api.dart';
part 'api/publication_api.dart';
part 'api/read_api.dart';
part 'api/register_api.dart';
part 'api/relationship_api.dart';
part 'api/report_api.dart';
part 'api/request_api.dart';
part 'api/reset_api.dart';
part 'api/review_api.dart';
part 'api/review_request_api.dart';
part 'api/schema_api.dart';
part 'api/service_api.dart';
part 'api/sign_api.dart';
part 'api/state_api.dart';
part 'api/tracking_api.dart';
part 'api/transition_api.dart';
part 'api/unfollow_api.dart';
part 'api/webhook_api.dart';

part 'model/activity.dart';
part 'model/activity_aggregated_pagination.dart';
part 'model/activity_group.dart';
part 'model/activity_pagination.dart';
part 'model/application.dart';
part 'model/application_links.dart';
part 'model/application_links_self.dart';
part 'model/application_links_self_iri_template.dart';
part 'model/application_links_self_iri_template_mapping.dart';
part 'model/business_activity.dart';
part 'model/business_activity_collection.dart';
part 'model/business_activity_links.dart';
part 'model/business_activity_links_image.dart';
part 'model/business_activity_links_schema.dart';
part 'model/business_activity_links_self.dart';
part 'model/business_activity_links_self_iri_template.dart';
part 'model/business_activity_links_self_iri_template_mapping.dart';
part 'model/business_activity_metadata_schema.dart';
part 'model/business_activity_pagination.dart';
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
part 'model/category_pagination.dart';
part 'model/category_patch.dart';
part 'model/chart.dart';
part 'model/checkpoint.dart';
part 'model/checkpoint_links.dart';
part 'model/checkpoint_links_organization.dart';
part 'model/choice.dart';
part 'model/comment_data.dart';
part 'model/condition.dart';
part 'model/delegate_data.dart';
part 'model/delegation.dart';
part 'model/delegation_links.dart';
part 'model/delegation_links_created_by.dart';
part 'model/delegation_links_created_by_iri_template.dart';
part 'model/delegation_links_created_by_iri_template_mapping.dart';
part 'model/delegation_links_from.dart';
part 'model/delegation_links_report.dart';
part 'model/delegation_links_report_iri_template.dart';
part 'model/delegation_links_report_iri_template_mapping.dart';
part 'model/delegation_links_self.dart';
part 'model/delegation_links_self_iri_template.dart';
part 'model/delegation_links_self_iri_template_mapping.dart';
part 'model/delegation_links_to.dart';
part 'model/device.dart';
part 'model/device_data.dart';
part 'model/device_links.dart';
part 'model/device_links_person.dart';
part 'model/document.dart';
part 'model/document_collection.dart';
part 'model/document_data.dart';
part 'model/document_data_file.dart';
part 'model/document_data_permission.dart';
part 'model/document_file.dart';
part 'model/document_links.dart';
part 'model/document_links_created_by.dart';
part 'model/document_links_file.dart';
part 'model/document_links_self.dart';
part 'model/document_links_self_iri_template.dart';
part 'model/document_links_self_iri_template_mapping.dart';
part 'model/document_pagination.dart';
part 'model/document_patch.dart';
part 'model/document_patch_file.dart';
part 'model/document_patch_permission.dart';
part 'model/document_permission.dart';
part 'model/email_data.dart';
part 'model/error.dart';
part 'model/error_embedded.dart';
part 'model/facebook_connect_data.dart';
part 'model/feature.dart';
part 'model/feature_geometry.dart';
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
part 'model/feedback_links_category.dart';
part 'model/feedback_links_image.dart';
part 'model/feedback_links_image_iri_template.dart';
part 'model/feedback_links_image_iri_template_mapping.dart';
part 'model/feedback_links_images.dart';
part 'model/feedback_links_reporter.dart';
part 'model/feedback_links_self.dart';
part 'model/feedback_links_self_iri_template.dart';
part 'model/feedback_links_self_iri_template_mapping.dart';
part 'model/feedback_links_tracking.dart';
part 'model/feedback_pagination.dart';
part 'model/feedback_review_request.dart';
part 'model/feedback_review_request_collection.dart';
part 'model/feedback_review_request_links.dart';
part 'model/feedback_review_request_links_item_to_review.dart';
part 'model/feedback_review_request_links_organization.dart';
part 'model/feedback_review_request_links_review.dart';
part 'model/feedback_review_request_links_reviewer.dart';
part 'model/feedback_review_request_links_self.dart';
part 'model/feedback_review_request_links_self_iri_template.dart';
part 'model/feedback_review_request_links_self_iri_template_mapping.dart';
part 'model/feedback_review_request_pagination.dart';
part 'model/feedback_state_patch.dart';
part 'model/feedback_workflow_transition_data.dart';
part 'model/image_data.dart';
part 'model/log_entry.dart';
part 'model/log_entry_collection.dart';
part 'model/log_entry_pagination.dart';
part 'model/login_data.dart';
part 'model/member.dart';
part 'model/member_collection.dart';
part 'model/member_data.dart';
part 'model/member_embedded.dart';
part 'model/member_links.dart';
part 'model/member_links_organization.dart';
part 'model/member_links_person.dart';
part 'model/member_links_self.dart';
part 'model/member_links_self_iri_template.dart';
part 'model/member_links_self_iri_template_mapping.dart';
part 'model/member_pagination.dart';
part 'model/member_patch.dart';
part 'model/occupant.dart';
part 'model/occupant_collection.dart';
part 'model/occupant_links.dart';
part 'model/occupant_links_person.dart';
part 'model/occupant_links_place.dart';
part 'model/occupant_links_place_iri_template.dart';
part 'model/occupant_links_place_iri_template_mapping.dart';
part 'model/occupant_links_self.dart';
part 'model/occupant_links_self_iri_template.dart';
part 'model/occupant_links_self_iri_template_mapping.dart';
part 'model/occupant_pagination.dart';
part 'model/operation.dart';
part 'model/operation_collection.dart';
part 'model/operation_data.dart';
part 'model/operation_links.dart';
part 'model/operation_links_created_by.dart';
part 'model/operation_links_feedback.dart';
part 'model/operation_links_image.dart';
part 'model/operation_links_image_iri_template.dart';
part 'model/operation_links_image_iri_template_mapping.dart';
part 'model/operation_links_operator.dart';
part 'model/operation_links_report.dart';
part 'model/operation_links_self.dart';
part 'model/operation_links_self_iri_template.dart';
part 'model/operation_links_self_iri_template_mapping.dart';
part 'model/operation_links_tracking.dart';
part 'model/operation_pagination.dart';
part 'model/operation_patch.dart';
part 'model/operation_state_patch.dart';
part 'model/operation_workflow_transition_data.dart';
part 'model/organization.dart';
part 'model/organization_collection.dart';
part 'model/organization_data.dart';
part 'model/organization_links.dart';
part 'model/organization_links_business_activity.dart';
part 'model/organization_links_logo.dart';
part 'model/organization_links_self.dart';
part 'model/organization_pagination.dart';
part 'model/organization_patch.dart';
part 'model/organization_patch_preferences.dart';
part 'model/organization_preferences.dart';
part 'model/organization_preferences_reference.dart';
part 'model/pagination_link.dart';
part 'model/pagination_links.dart';
part 'model/password_data.dart';
part 'model/person.dart';
part 'model/person_collection.dart';
part 'model/person_data.dart';
part 'model/person_links.dart';
part 'model/person_links_image.dart';
part 'model/person_links_member_of.dart';
part 'model/person_links_self.dart';
part 'model/person_pagination.dart';
part 'model/person_patch.dart';
part 'model/person_patch_preferences.dart';
part 'model/person_preferences.dart';
part 'model/place.dart';
part 'model/place_collection.dart';
part 'model/place_data.dart';
part 'model/place_geo.dart';
part 'model/place_geo_polygon.dart';
part 'model/place_links.dart';
part 'model/place_links_contained_in_place.dart';
part 'model/place_links_contains_places.dart';
part 'model/place_links_contains_places_iri_template.dart';
part 'model/place_links_contains_places_iri_template_mapping.dart';
part 'model/place_links_organization.dart';
part 'model/place_links_self.dart';
part 'model/place_pagination.dart';
part 'model/place_patch.dart';
part 'model/property.dart';
part 'model/property_conditions.dart';
part 'model/property_items.dart';
part 'model/publication.dart';
part 'model/publication_collection.dart';
part 'model/publication_data.dart';
part 'model/publication_links.dart';
part 'model/publication_links_author.dart';
part 'model/publication_links_organization.dart';
part 'model/publication_links_place.dart';
part 'model/publication_links_self.dart';
part 'model/publication_links_self_iri_template.dart';
part 'model/publication_links_self_iri_template_mapping.dart';
part 'model/publication_pagination.dart';
part 'model/register_data.dart';
part 'model/relationship_data.dart';
part 'model/report.dart';
part 'model/report_collection.dart';
part 'model/report_embedded.dart';
part 'model/report_embedded_target_groups.dart';
part 'model/report_links.dart';
part 'model/report_links_category.dart';
part 'model/report_links_delegated_from.dart';
part 'model/report_links_delegated_to.dart';
part 'model/report_links_feedback.dart';
part 'model/report_links_operations.dart';
part 'model/report_links_organization.dart';
part 'model/report_links_self.dart';
part 'model/report_links_tracking.dart';
part 'model/report_pagination.dart';
part 'model/report_patch.dart';
part 'model/report_state_patch.dart';
part 'model/report_workflow_transition_data.dart';
part 'model/review.dart';
part 'model/review_collection.dart';
part 'model/review_data.dart';
part 'model/review_links.dart';
part 'model/review_links_author.dart';
part 'model/review_links_self.dart';
part 'model/review_links_self_iri_template.dart';
part 'model/review_links_self_iri_template_mapping.dart';
part 'model/review_pagination.dart';
part 'model/schema.dart';
part 'model/service.dart';
part 'model/service_collection.dart';
part 'model/service_contact_point.dart';
part 'model/service_links.dart';
part 'model/service_links_organization.dart';
part 'model/service_pagination.dart';
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
part 'model/webhook_links.dart';
part 'model/webhook_links_organization.dart';
part 'model/webhook_links_self.dart';
part 'model/webhook_links_self_iri_template.dart';
part 'model/webhook_links_self_iri_template_mapping.dart';
part 'model/webhook_pagination.dart';
part 'model/webhook_patch.dart';

ApiClient defaultApiClient = ApiClient();
