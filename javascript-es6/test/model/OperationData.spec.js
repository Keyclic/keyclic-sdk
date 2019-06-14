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
    instance = new @KeyclicSdkJavascript.OperationData();
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

  describe('OperationData', function() {
    it('should create an instance of OperationData', function() {
      // uncomment below and update the code to test OperationData
      //var instane = new @KeyclicSdkJavascript.OperationData();
      //expect(instance).to.be.a(@KeyclicSdkJavascript.OperationData);
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instane = new @KeyclicSdkJavascript.OperationData();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instane = new @KeyclicSdkJavascript.OperationData();
      //expect(instance).to.be();
    });

    it('should have the property identificationNumber (base name: "identificationNumber")', function() {
      // uncomment below and update the code to test the property identificationNumber
      //var instane = new @KeyclicSdkJavascript.OperationData();
      //expect(instance).to.be();
    });

    it('should have the property report (base name: "report")', function() {
      // uncomment below and update the code to test the property report
      //var instane = new @KeyclicSdkJavascript.OperationData();
      //expect(instance).to.be();
    });

    it('should have the property organization (base name: "organization")', function() {
      // uncomment below and update the code to test the property organization
      //var instane = new @KeyclicSdkJavascript.OperationData();
      //expect(instance).to.be();
    });

    it('should have the property scheduledAt (base name: "scheduledAt")', function() {
      // uncomment below and update the code to test the property scheduledAt
      //var instane = new @KeyclicSdkJavascript.OperationData();
      //expect(instance).to.be();
    });

  });

}));