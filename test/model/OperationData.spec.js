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
    instance = new KeyclicApi.OperationData()
  })

  var getProperty = function (object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function') { return object[getter]() } else { return object[property] }
  }

  var setProperty = function (object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function') { object[setter](value) } else { object[property] = value }
  }

  describe('OperationData', function () {
    it('should create an instance of OperationData', function () {
      // uncomment below and update the code to test OperationData
      // var instane = new KeyclicApi.OperationData();
      // expect(instance).to.be.a(KeyclicApi.OperationData);
    })

    it('should have the property description (base name: "description")', function () {
      // uncomment below and update the code to test the property description
      // var instane = new KeyclicApi.OperationData();
      // expect(instance).to.be();
    })

    it('should have the property duration (base name: "duration")', function () {
      // uncomment below and update the code to test the property duration
      // var instane = new KeyclicApi.OperationData();
      // expect(instance).to.be();
    })

    it('should have the property name (base name: "name")', function () {
      // uncomment below and update the code to test the property name
      // var instane = new KeyclicApi.OperationData();
      // expect(instance).to.be();
    })

    it('should have the property identificationNumber (base name: "identificationNumber")', function () {
      // uncomment below and update the code to test the property identificationNumber
      // var instane = new KeyclicApi.OperationData();
      // expect(instance).to.be();
    })

    it('should have the property report (base name: "report")', function () {
      // uncomment below and update the code to test the property report
      // var instane = new KeyclicApi.OperationData();
      // expect(instance).to.be();
    })

    it('should have the property startDate (base name: "startDate")', function () {
      // uncomment below and update the code to test the property startDate
      // var instane = new KeyclicApi.OperationData();
      // expect(instance).to.be();
    })
  })
}))
