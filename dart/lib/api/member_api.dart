part of keyclic_sdk_api.api;

class MemberApi {
  final ApiClient apiClient;

  MemberApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Retrieve all Member resources.
  ///
  ///
  Future<MemberPagination> cgetMembersByOrganization(String xKeyclicApp, String organization,
      {String acceptLanguage,
      String xKeyclicAppVersion,
      String role,
      String query,
      int page,
      int limit,
      String order,
      DateTime after,
      DateTime before,
      String search_familyName_,
      String search_givenName_,
      String search_jobTitle_,
      String search_telephone_,
      String search_username_,
      String search_email_}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/members".replaceAll("{format}", "json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (role != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "role", role));
    }
    if (query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if (order != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "order", order));
    }
    if (after != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "after", after));
    }
    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "before", before));
    }
    if (search_familyName_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search[familyName]", search_familyName_));
    }
    if (search_givenName_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search[givenName]", search_givenName_));
    }
    if (search_jobTitle_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search[jobTitle]", search_jobTitle_));
    }
    if (search_telephone_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search[telephone]", search_telephone_));
    }
    if (search_username_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search[username]", search_username_));
    }
    if (search_email_ != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search[email]", search_email_));
    }
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'MemberPagination') as MemberPagination;
    } else {
      return null;
    }
  }

  /// Remove one Member resource.
  ///
  ///
  Future<Organization> deleteMemberByOrganizationAndMember(String xKeyclicApp, String organization, String member, {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }
    if (member == null) {
      throw ApiException(400, "Missing required param: member");
    }

    // create path and map variables
    String path = "/organizations/{organization}/members/{member}".replaceAll("{format}", "json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "member" + "}", member.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Organization') as Organization;
    } else {
      return null;
    }
  }

  /// Retrieve one Member resource.
  ///
  ///
  Future<Member> getMemberByOrganizationAndMember(String xKeyclicApp, String organization, String member, {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }
    if (member == null) {
      throw ApiException(400, "Missing required param: member");
    }

    // create path and map variables
    String path = "/organizations/{organization}/members/{member}".replaceAll("{format}", "json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "member" + "}", member.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Member') as Member;
    } else {
      return null;
    }
  }

  /// Edit one Member resource.
  ///
  ///
  Future<Member> patchMemberByOrganizationAndMember(String xKeyclicApp, MemberPatch memberPatch, String organization, String member, {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = memberPatch;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (memberPatch == null) {
      throw ApiException(400, "Missing required param: memberPatch");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }
    if (member == null) {
      throw ApiException(400, "Missing required param: member");
    }

    // create path and map variables
    String path = "/organizations/{organization}/members/{member}".replaceAll("{format}", "json").replaceAll("{" + "organization" + "}", organization.toString()).replaceAll("{" + "member" + "}", member.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PATCH', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Member') as Member;
    } else {
      return null;
    }
  }

  /// Create one Member resource.
  ///
  ///
  Future<Member> postMemberByOrganization(String xKeyclicApp, PersonData personData, String organization, {String acceptLanguage, String xKeyclicAppVersion}) async {
    Object postBody = personData;

    // verify required params are set
    if (xKeyclicApp == null) {
      throw ApiException(400, "Missing required param: xKeyclicApp");
    }
    if (personData == null) {
      throw ApiException(400, "Missing required param: personData");
    }
    if (organization == null) {
      throw ApiException(400, "Missing required param: organization");
    }

    // create path and map variables
    String path = "/organizations/{organization}/members".replaceAll("{format}", "json").replaceAll("{" + "organization" + "}", organization.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["accept-language"] = acceptLanguage;
    headerParams["x-keyclic-app"] = xKeyclicApp;
    headerParams["x-keyclic-app-version"] = xKeyclicAppVersion;

    List<String> contentTypes = ["application/json;charset=UTF-8"];

    String contentType = contentTypes.isEmpty ? "application/json" : contentTypes[0];
    List<String> authNames = ["bearer"];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams, postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Member') as Member;
    } else {
      return null;
    }
  }
}
