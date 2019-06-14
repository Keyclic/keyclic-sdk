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

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.@KeyclicSdkJavascript);
  }
}(this, function(expect, @KeyclicSdkJavascript) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new @KeyclicSdkJavascript.MemberApi();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('MemberApi', function() {
    describe('cgetMembersByOrganization', function() {
      it('should call cgetMembersByOrganization successfully', function(done) {
        //uncomment below and update the code to test cgetMembersByOrganization
        //instance.cgetMembersByOrganization(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('deleteMemberByOrganizationAndMember', function() {
      it('should call deleteMemberByOrganizationAndMember successfully', function(done) {
        //uncomment below and update the code to test deleteMemberByOrganizationAndMember
        //instance.deleteMemberByOrganizationAndMember(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getMemberByOrganizationAndMember', function() {
      it('should call getMemberByOrganizationAndMember successfully', function(done) {
        //uncomment below and update the code to test getMemberByOrganizationAndMember
        //instance.getMemberByOrganizationAndMember(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('patchMemberByOrganizationAndMember', function() {
      it('should call patchMemberByOrganizationAndMember successfully', function(done) {
        //uncomment below and update the code to test patchMemberByOrganizationAndMember
        //instance.patchMemberByOrganizationAndMember(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('postMemberByOrganization', function() {
      it('should call postMemberByOrganization successfully', function(done) {
        //uncomment below and update the code to test postMemberByOrganization
        //instance.postMemberByOrganization(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));