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
    instance = new KeyclicApi.Tracking()
  })

  var getProperty = function (object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function') { return object[getter]() } else { return object[property] }
  }

  var setProperty = function (object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function') { object[setter](value) } else { object[property] = value }
  }

  describe('Tracking', function () {
    it('should create an instance of Tracking', function () {
      // uncomment below and update the code to test Tracking
      // var instane = new KeyclicApi.Tracking();
      // expect(instance).to.be.a(KeyclicApi.Tracking);
    })

    it('should have the property state (base name: "state")', function () {
      // uncomment below and update the code to test the property state
      // var instane = new KeyclicApi.Tracking();
      // expect(instance).to.be();
    })

    it('should have the property progression (base name: "progression")', function () {
      // uncomment below and update the code to test the property progression
      // var instane = new KeyclicApi.Tracking();
      // expect(instance).to.be();
    })

    it('should have the property time (base name: "time")', function () {
      // uncomment below and update the code to test the property time
      // var instane = new KeyclicApi.Tracking();
      // expect(instance).to.be();
    })

    it('should have the property checkpoints (base name: "checkpoints")', function () {
      // uncomment below and update the code to test the property checkpoints
      // var instane = new KeyclicApi.Tracking();
      // expect(instance).to.be();
    })
  })
}))
