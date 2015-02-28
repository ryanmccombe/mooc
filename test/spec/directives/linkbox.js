'use strict';

describe('Directive: linkbox', function () {

  // load the directive's module
  beforeEach(module('moocApp'));

  var element,
    scope;

  beforeEach(inject(function ($rootScope) {
    scope = $rootScope.$new();
  }));

  it('should make hidden element visible', inject(function ($compile) {
    element = angular.element('<linkbox></linkbox>');
    element = $compile(element)(scope);
    expect(element.text()).toBe('this is the linkbox directive');
  }));
});
