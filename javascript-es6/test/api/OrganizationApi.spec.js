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
    instance = new @KeyclicSdkJavascript.OrganizationApi();
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

  describe('OrganizationApi', function() {
    describe('cgetOrganizations', function() {
      it('should call cgetOrganizations successfully', function(done) {
        //uncomment below and update the code to test cgetOrganizations
        //instance.cgetOrganizations(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getOrganization', function() {
      it('should call getOrganization successfully', function(done) {
        //uncomment below and update the code to test getOrganization
        //instance.getOrganization(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('patchOrganization', function() {
      it('should call patchOrganization successfully', function(done) {
        //uncomment below and update the code to test patchOrganization
        //instance.patchOrganization(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('postOrganization', function() {
      it('should call postOrganization successfully', function(done) {
        //uncomment below and update the code to test postOrganization
        //instance.postOrganization(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));