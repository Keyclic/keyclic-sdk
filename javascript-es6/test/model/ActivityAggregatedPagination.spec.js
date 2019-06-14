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
    instance = new @KeyclicSdkJavascript.ActivityAggregatedPagination();
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

  describe('ActivityAggregatedPagination', function() {
    it('should create an instance of ActivityAggregatedPagination', function() {
      // uncomment below and update the code to test ActivityAggregatedPagination
      //var instane = new @KeyclicSdkJavascript.ActivityAggregatedPagination();
      //expect(instance).to.be.a(@KeyclicSdkJavascript.ActivityAggregatedPagination);
    });

    it('should have the property duration (base name: "duration")', function() {
      // uncomment below and update the code to test the property duration
      //var instane = new @KeyclicSdkJavascript.ActivityAggregatedPagination();
      //expect(instance).to.be();
    });

    it('should have the property next (base name: "next")', function() {
      // uncomment below and update the code to test the property next
      //var instane = new @KeyclicSdkJavascript.ActivityAggregatedPagination();
      //expect(instance).to.be();
    });

    it('should have the property unseen (base name: "unseen")', function() {
      // uncomment below and update the code to test the property unseen
      //var instane = new @KeyclicSdkJavascript.ActivityAggregatedPagination();
      //expect(instance).to.be();
    });

    it('should have the property unread (base name: "unread")', function() {
      // uncomment below and update the code to test the property unread
      //var instane = new @KeyclicSdkJavascript.ActivityAggregatedPagination();
      //expect(instance).to.be();
    });

    it('should have the property results (base name: "results")', function() {
      // uncomment below and update the code to test the property results
      //var instane = new @KeyclicSdkJavascript.ActivityAggregatedPagination();
      //expect(instance).to.be();
    });

  });

}));