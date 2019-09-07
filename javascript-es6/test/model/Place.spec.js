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
    instance = new @KeyclicSdkJavascript.Place();
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

  describe('Place', function() {
    it('should create an instance of Place', function() {
      // uncomment below and update the code to test Place
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be.a(@KeyclicSdkJavascript.Place);
    });

    it('should have the property embedded (base name: "_embedded")', function() {
      // uncomment below and update the code to test the property embedded
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property links (base name: "_links")', function() {
      // uncomment below and update the code to test the property links
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property branchCode (base name: "branchCode")', function() {
      // uncomment below and update the code to test the property branchCode
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property createdAt (base name: "createdAt")', function() {
      // uncomment below and update the code to test the property createdAt
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property description (base name: "description")', function() {
      // uncomment below and update the code to test the property description
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property geo (base name: "geo")', function() {
      // uncomment below and update the code to test the property geo
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property preferences (base name: "preferences")', function() {
      // uncomment below and update the code to test the property preferences
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property type (base name: "type")', function() {
      // uncomment below and update the code to test the property type
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

    it('should have the property updatedAt (base name: "updatedAt")', function() {
      // uncomment below and update the code to test the property updatedAt
      //var instane = new @KeyclicSdkJavascript.Place();
      //expect(instance).to.be();
    });

  });

}));
