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
    instance = new @KeyclicSdkJavascript.Person();
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

  describe('Person', function() {
    it('should create an instance of Person', function() {
      // uncomment below and update the code to test Person
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be.a(@KeyclicSdkJavascript.Person);
    });

    it('should have the property links (base name: "_links")', function() {
      // uncomment below and update the code to test the property links
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property createdAt (base name: "createdAt")', function() {
      // uncomment below and update the code to test the property createdAt
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property email (base name: "email")', function() {
      // uncomment below and update the code to test the property email
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property familyName (base name: "familyName")', function() {
      // uncomment below and update the code to test the property familyName
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property givenName (base name: "givenName")', function() {
      // uncomment below and update the code to test the property givenName
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property id (base name: "id")', function() {
      // uncomment below and update the code to test the property id
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property jobTitle (base name: "jobTitle")', function() {
      // uncomment below and update the code to test the property jobTitle
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property optIn (base name: "optIn")', function() {
      // uncomment below and update the code to test the property optIn
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property preferences (base name: "preferences")', function() {
      // uncomment below and update the code to test the property preferences
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property telephone (base name: "telephone")', function() {
      // uncomment below and update the code to test the property telephone
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property type (base name: "type")', function() {
      // uncomment below and update the code to test the property type
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property updatedAt (base name: "updatedAt")', function() {
      // uncomment below and update the code to test the property updatedAt
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

    it('should have the property username (base name: "username")', function() {
      // uncomment below and update the code to test the property username
      //var instane = new @KeyclicSdkJavascript.Person();
      //expect(instance).to.be();
    });

  });

}));
