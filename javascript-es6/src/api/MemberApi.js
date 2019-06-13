/**
 * Keyclic API
 * No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)
 *
 *  <techies@keyclic.com>
 *
 * This class is auto generated by the swagger code generator program with proper templates of Keyclic.
 * https://github.com/swagger-api/swagger-codegen.git
 * https://github.com/Keyclic/app-sdk.git
 * Do not edit the class manually.
 */

import ApiClient from "../ApiClient";
import Error from "../model/Error";
import Member from "../model/Member";
import MemberPagination from "../model/MemberPagination";
import MemberPatch from "../model/MemberPatch";
import Organization from "../model/Organization";
import PersonData from "../model/PersonData";

/**
 * Member service.
 * @module api/MemberApi
 */
export default class MemberApi extends ApiClient {
  /**
   * @class
   * { string } basePath To override basePath.
   * { object } headers Additional headers for the instance.
   * { int } timeout Number in seconds before timeout.
   */
  constructor(basePath = null, headers = null, timeout = null) {
    super(basePath, headers, timeout);
  }

  /**
   * Retrieve all Member resources.
   * @param { String } xKeyclicApp
   * @param { String } organization The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { MemberPagination }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   * @param { String } role
   * @param { String } roles
   * @param { String } query
   * @param { Number } page Page of the overview.  (default to 1)
   * @param { Number } limit Page of the overview.  (default to 10)
   * @param { module:model/String } order   (default to desc)
   * @param { module:model/Date } after
   * @param { module:model/Date } before
   * @param { String } searchFamilyName
   * @param { String } searchGivenName
   * @param { String } searchJobTitle
   * @param { String } searchTelephone
   * @param { String } searchUsername
   * @param { String } searchEmail
   */
  cgetMembersByOrganization(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = MemberPagination;
    }

    let {
      xKeyclicApp,
      organization,
      acceptLanguage,
      xKeyclicAppVersion,
      role,
      roles,
      query,
      page,
      limit,
      order,
      after,
      before,
      searchFamilyName,
      searchGivenName,
      searchJobTitle,
      searchTelephone,
      searchUsername,
      searchEmail
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling cgetMembersByOrganization'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling cgetMembersByOrganization'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the default value of parameter 'page'
    if (typeof page === "undefined" || page === null) {
      page = 1;
    }

    // verify the default value of parameter 'limit'
    if (typeof limit === "undefined" || limit === null) {
      limit = 10;
    }

    // verify the default value of parameter 'order'
    if (typeof order === "undefined" || order === null) {
      order = "desc";
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    // verify the null value of parameter 'role'
    if (typeof role === "undefined") {
      role = null;
    }

    // verify the null value of parameter 'roles'
    if (typeof roles === "undefined") {
      roles = null;
    }

    // verify the null value of parameter 'query'
    if (typeof query === "undefined") {
      query = null;
    }

    // verify the null value of parameter 'after'
    if (typeof after === "undefined") {
      after = null;
    }

    // verify the null value of parameter 'before'
    if (typeof before === "undefined") {
      before = null;
    }

    // verify the null value of parameter 'searchFamilyName'
    if (typeof searchFamilyName === "undefined") {
      searchFamilyName = null;
    }

    // verify the null value of parameter 'searchGivenName'
    if (typeof searchGivenName === "undefined") {
      searchGivenName = null;
    }

    // verify the null value of parameter 'searchJobTitle'
    if (typeof searchJobTitle === "undefined") {
      searchJobTitle = null;
    }

    // verify the null value of parameter 'searchTelephone'
    if (typeof searchTelephone === "undefined") {
      searchTelephone = null;
    }

    // verify the null value of parameter 'searchUsername'
    if (typeof searchUsername === "undefined") {
      searchUsername = null;
    }

    // verify the null value of parameter 'searchEmail'
    if (typeof searchEmail === "undefined") {
      searchEmail = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling cgetMembersByOrganization'
      );
    }

    let pathParams = {
      organization: organization
    };

    let bodyParam = null;

    let queryParams = {
      role: role,
      roles: roles,
      query: query,
      page: page,
      limit: limit,
      order: order,
      after: after,
      before: before,
      "search[familyName]": searchFamilyName,
      "search[givenName]": searchGivenName,
      "search[jobTitle]": searchJobTitle,
      "search[telephone]": searchTelephone,
      "search[username]": searchUsername,
      "search[email]": searchEmail
    };

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/organizations/{organization}/members",
      "GET",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }

  /**
   * Remove one Member resource.
   * @param { String } xKeyclicApp
   * @param { String } organization The identifier of the resource formatted as GUID string.
   * @param { String } member The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Organization }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  deleteMemberByOrganizationAndMember(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Organization;
    }

    let {
      xKeyclicApp,
      organization,
      member,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling deleteMemberByOrganizationAndMember'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling deleteMemberByOrganizationAndMember'
      );
    }

    // verify the required parameter 'member' is set
    if (typeof member === "undefined" || member === null) {
      throw new window.Error(
        'Missing the required parameter "member" when calling deleteMemberByOrganizationAndMember'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling deleteMemberByOrganizationAndMember'
      );
    }

    let pathParams = {
      organization: organization,
      member: member
    };

    let bodyParam = null;

    let queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/organizations/{organization}/members/{member}",
      "DELETE",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }

  /**
   * Retrieve one Member resource.
   * @param { String } xKeyclicApp
   * @param { String } organization The identifier of the resource formatted as GUID string.
   * @param { String } member The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Member }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  getMemberByOrganizationAndMember(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Member;
    }

    let {
      xKeyclicApp,
      organization,
      member,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling getMemberByOrganizationAndMember'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling getMemberByOrganizationAndMember'
      );
    }

    // verify the required parameter 'member' is set
    if (typeof member === "undefined" || member === null) {
      throw new window.Error(
        'Missing the required parameter "member" when calling getMemberByOrganizationAndMember'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling getMemberByOrganizationAndMember'
      );
    }

    let pathParams = {
      organization: organization,
      member: member
    };

    let bodyParam = null;

    let queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/organizations/{organization}/members/{member}",
      "GET",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }

  /**
   * Edit one Member resource.
   * @param { String } xKeyclicApp
   * @param { module:model/MemberPatch } memberPatch
   * @param { String } organization The identifier of the resource formatted as GUID string.
   * @param { String } member The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Member }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  patchMemberByOrganizationAndMember(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Member;
    }

    let {
      xKeyclicApp,
      memberPatch,
      organization,
      member,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling patchMemberByOrganizationAndMember'
      );
    }

    // verify the required parameter 'memberPatch' is set
    if (typeof memberPatch === "undefined" || memberPatch === null) {
      throw new window.Error(
        'Missing the required parameter "memberPatch" when calling patchMemberByOrganizationAndMember'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling patchMemberByOrganizationAndMember'
      );
    }

    // verify the required parameter 'member' is set
    if (typeof member === "undefined" || member === null) {
      throw new window.Error(
        'Missing the required parameter "member" when calling patchMemberByOrganizationAndMember'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling patchMemberByOrganizationAndMember'
      );
    }

    let pathParams = {
      organization: organization,
      member: member
    };

    let bodyParam = memberPatch;

    let queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/organizations/{organization}/members/{member}",
      "PATCH",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }

  /**
   * Create one Member resource.
   * @param { String } xKeyclicApp
   * @param { module:model/PersonData } personData
   * @param { String } organization The identifier of the resource formatted as GUID string.
   * @param { Object } credentials The required credentials with good properties to use different types of authentication.
   * @param { Member }  returnType The required type to return; can be a string for simple types or the constructor for a complex type.
   * @param { module:model/String } acceptLanguage   (default to fr-FR)
   * @param { String } xKeyclicAppVersion
   */
  postMemberByOrganization(returnType = null, options, credentials) {
    if (returnType === null) {
      returnType = Member;
    }

    let {
      xKeyclicApp,
      personData,
      organization,
      acceptLanguage,
      xKeyclicAppVersion
    } = options;

    // verify the required parameter 'xKeyclicApp' is set
    if (typeof xKeyclicApp === "undefined" || xKeyclicApp === null) {
      throw new window.Error(
        'Missing the required parameter "xKeyclicApp" when calling postMemberByOrganization'
      );
    }

    // verify the required parameter 'personData' is set
    if (typeof personData === "undefined" || personData === null) {
      throw new window.Error(
        'Missing the required parameter "personData" when calling postMemberByOrganization'
      );
    }

    // verify the required parameter 'organization' is set
    if (typeof organization === "undefined" || organization === null) {
      throw new window.Error(
        'Missing the required parameter "organization" when calling postMemberByOrganization'
      );
    }

    // verify the default value of parameter 'acceptLanguage'
    if (typeof acceptLanguage === "undefined" || acceptLanguage === null) {
      acceptLanguage = "fr-FR";
    }

    // verify the null value of parameter 'xKeyclicAppVersion'
    if (typeof xKeyclicAppVersion === "undefined") {
      xKeyclicAppVersion = null;
    }

    if (typeof credentials === "undefined" || credentials === null) {
      throw new window.Error(
        'Missing the required parameter "credentials" when calling postMemberByOrganization'
      );
    }

    let pathParams = {
      organization: organization
    };

    let bodyParam = personData;

    let queryParams = {};

    let headerParams = {
      "accept-language": acceptLanguage,
      "x-keyclic-app": xKeyclicApp,
      "x-keyclic-app-version": xKeyclicAppVersion
    };

    let credentialParams = credentials;

    let authNames = ["bearer"];

    let contentTypes = ["application/json;charset=UTF-8"];

    let accepts = ["application/hal+json;charset=UTF-8"];

    return this.callApi(
      "/organizations/{organization}/members",
      "POST",
      pathParams,
      queryParams,
      headerParams,
      bodyParam,
      authNames,
      credentialParams,
      contentTypes,
      accepts,
      returnType
    );
  }
}
