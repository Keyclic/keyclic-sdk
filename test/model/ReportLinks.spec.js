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

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', '../../src/index'], factory)
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require('../../src/index'))
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.KeyclicApi)
  }
}(this, function (expect, KeyclicApi) {
  'use strict'

  var instance

  beforeEach(function () {
    instance = new KeyclicApi.ReportLinks()
  })

  var getProperty = function (object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function') { return object[getter]() } else { return object[property] }
  }

  var setProperty = function (object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function') { object[setter](value) } else { object[property] = value }
  }

  describe('ReportLinks', function () {
    it('should create an instance of ReportLinks', function () {
      // uncomment below and update the code to test ReportLinks
      // var instane = new KeyclicApi.ReportLinks();
      // expect(instance).to.be.a(KeyclicApi.ReportLinks);
    })

    it('should have the property self (base name: "self")', function () {
      // uncomment below and update the code to test the property self
      // var instane = new KeyclicApi.ReportLinks();
      // expect(instance).to.be();
    })

    it('should have the property feedback (base name: "feedback")', function () {
      // uncomment below and update the code to test the property feedback
      // var instane = new KeyclicApi.ReportLinks();
      // expect(instance).to.be();
    })

    it('should have the property operations (base name: "operations")', function () {
      // uncomment below and update the code to test the property operations
      // var instane = new KeyclicApi.ReportLinks();
      // expect(instance).to.be();
    })

    it('should have the property organization (base name: "organization")', function () {
      // uncomment below and update the code to test the property organization
      // var instane = new KeyclicApi.ReportLinks();
      // expect(instance).to.be();
    })

    it('should have the property category (base name: "category")', function () {
      // uncomment below and update the code to test the property category
      // var instane = new KeyclicApi.ReportLinks();
      // expect(instance).to.be();
    })

    it('should have the property delegatedTo (base name: "delegatedTo")', function () {
      // uncomment below and update the code to test the property delegatedTo
      // var instane = new KeyclicApi.ReportLinks();
      // expect(instance).to.be();
    })

    it('should have the property delegatedFrom (base name: "delegatedFrom")', function () {
      // uncomment below and update the code to test the property delegatedFrom
      // var instane = new KeyclicApi.ReportLinks();
      // expect(instance).to.be();
    })

    it('should have the property tracking (base name: "tracking")', function () {
      // uncomment below and update the code to test the property tracking
      // var instane = new KeyclicApi.ReportLinks();
      // expect(instance).to.be();
    })
  })
}))
