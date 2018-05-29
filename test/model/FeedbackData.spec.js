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
    factory(root.expect, root.KeyclicApi);
  }
}(this, function(expect, KeyclicApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new KeyclicApi.FeedbackData();
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

  describe('FeedbackData', function() {
    it('should create an instance of FeedbackData', function() {
      // uncomment below and update the code to test FeedbackData
      //var instane = new KeyclicApi.FeedbackData();
      //expect(instance).to.be.a(KeyclicApi.FeedbackData);
    });

    it('should have the property category (base name: "category")', function() {
      // uncomment below and update the code to test the property category
      //var instane = new KeyclicApi.FeedbackData();
      //expect(instance).to.be();
    });

    it('should have the property geo (base name: "geo")', function() {
      // uncomment below and update the code to test the property geo
      //var instane = new KeyclicApi.FeedbackData();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instane = new KeyclicApi.FeedbackData();
      //expect(instance).to.be();
    });

    it('should have the property visibility (base name: "visibility")', function() {
      // uncomment below and update the code to test the property visibility
      //var instane = new KeyclicApi.FeedbackData();
      //expect(instance).to.be();
    });

    it('should have the property businessActivity (base name: "businessActivity")', function() {
      // uncomment below and update the code to test the property businessActivity
      //var instane = new KeyclicApi.FeedbackData();
      //expect(instance).to.be();
    });

    it('should have the property proMode (base name: "proMode")', function() {
      // uncomment below and update the code to test the property proMode
      //var instane = new KeyclicApi.FeedbackData();
      //expect(instance).to.be();
    });

  });

}));
