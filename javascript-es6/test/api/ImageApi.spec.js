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
    instance = new @KeyclicSdkJavascript.ImageApi();
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

  describe('ImageApi', function() {
    describe('deleteImageByOperationAndImage', function() {
      it('should call deleteImageByOperationAndImage successfully', function(done) {
        //uncomment below and update the code to test deleteImageByOperationAndImage
        //instance.deleteImageByOperationAndImage(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getImageByBusinessActivityAndWidthAndHeight', function() {
      it('should call getImageByBusinessActivityAndWidthAndHeight successfully', function(done) {
        //uncomment below and update the code to test getImageByBusinessActivityAndWidthAndHeight
        //instance.getImageByBusinessActivityAndWidthAndHeight(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getImageByFeedbackAndImageAndWidthAndHeight', function() {
      it('should call getImageByFeedbackAndImageAndWidthAndHeight successfully', function(done) {
        //uncomment below and update the code to test getImageByFeedbackAndImageAndWidthAndHeight
        //instance.getImageByFeedbackAndImageAndWidthAndHeight(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getImageByOperationAndImageAndWidthAndHeight', function() {
      it('should call getImageByOperationAndImageAndWidthAndHeight successfully', function(done) {
        //uncomment below and update the code to test getImageByOperationAndImageAndWidthAndHeight
        //instance.getImageByOperationAndImageAndWidthAndHeight(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getImageByPersonAndWidthAndHeight', function() {
      it('should call getImageByPersonAndWidthAndHeight successfully', function(done) {
        //uncomment below and update the code to test getImageByPersonAndWidthAndHeight
        //instance.getImageByPersonAndWidthAndHeight(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('postImageByFeedback', function() {
      it('should call postImageByFeedback successfully', function(done) {
        //uncomment below and update the code to test postImageByFeedback
        //instance.postImageByFeedback(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('postImageByOperation', function() {
      it('should call postImageByOperation successfully', function(done) {
        //uncomment below and update the code to test postImageByOperation
        //instance.postImageByOperation(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));
