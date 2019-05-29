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
    instance = new @KeyclicSdkJavascript.PublicationPagination();
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

  describe('PublicationPagination', function() {
    it('should create an instance of PublicationPagination', function() {
      // uncomment below and update the code to test PublicationPagination
      //var instane = new @KeyclicSdkJavascript.PublicationPagination();
      //expect(instance).to.be.a(@KeyclicSdkJavascript.PublicationPagination);
    });

    it('should have the property limit (base name: "limit")', function() {
      // uncomment below and update the code to test the property limit
      //var instane = new @KeyclicSdkJavascript.PublicationPagination();
      //expect(instance).to.be();
    });

    it('should have the property page (base name: "page")', function() {
      // uncomment below and update the code to test the property page
      //var instane = new @KeyclicSdkJavascript.PublicationPagination();
      //expect(instance).to.be();
    });

    it('should have the property pages (base name: "pages")', function() {
      // uncomment below and update the code to test the property pages
      //var instane = new @KeyclicSdkJavascript.PublicationPagination();
      //expect(instance).to.be();
    });

    it('should have the property total (base name: "total")', function() {
      // uncomment below and update the code to test the property total
      //var instane = new @KeyclicSdkJavascript.PublicationPagination();
      //expect(instance).to.be();
    });

    it('should have the property embedded (base name: "_embedded")', function() {
      // uncomment below and update the code to test the property embedded
      //var instane = new @KeyclicSdkJavascript.PublicationPagination();
      //expect(instance).to.be();
    });

    it('should have the property links (base name: "_links")', function() {
      // uncomment below and update the code to test the property links
      //var instane = new @KeyclicSdkJavascript.PublicationPagination();
      //expect(instance).to.be();
    });

  });

}));
