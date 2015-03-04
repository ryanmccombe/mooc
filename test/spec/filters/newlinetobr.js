'use strict';

describe('Filter: newLineToBr', function () {

  // load the filter's module
  beforeEach(module('moocApp'));

  // initialize a new instance of the filter before each test
  var newLineToBr;
  beforeEach(inject(function ($filter) {
    newLineToBr = $filter('newLineToBr');
  }));

  it('should return the input prefixed with "newLineToBr filter:"', function () {
    var text = 'angularjs';
    expect(newLineToBr(text)).toBe('newLineToBr filter: ' + text);
  });

});
