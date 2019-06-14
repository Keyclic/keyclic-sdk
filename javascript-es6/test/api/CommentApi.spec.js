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
    instance = new @KeyclicSdkJavascript.CommentApi();
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

  describe('CommentApi', function() {
    describe('cgetCommentsByFeedback', function() {
      it('should call cgetCommentsByFeedback successfully', function(done) {
        //uncomment below and update the code to test cgetCommentsByFeedback
        //instance.cgetCommentsByFeedback(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('cgetCommentsByOperation', function() {
      it('should call cgetCommentsByOperation successfully', function(done) {
        //uncomment below and update the code to test cgetCommentsByOperation
        //instance.cgetCommentsByOperation(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('postCommentByFeedback', function() {
      it('should call postCommentByFeedback successfully', function(done) {
        //uncomment below and update the code to test postCommentByFeedback
        //instance.postCommentByFeedback(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('postCommentByOperation', function() {
      it('should call postCommentByOperation successfully', function(done) {
        //uncomment below and update the code to test postCommentByOperation
        //instance.postCommentByOperation(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));