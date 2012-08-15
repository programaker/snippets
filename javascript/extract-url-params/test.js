test('Url without parameters', function() {
  var url = new Url('http://www.youtube.com/');
  var expected = undefined;
  var actual = url.param('v');
  deepEqual(actual, expected, 'should return "undefined" when trying to get a param value by name')
});

test('Url with parameters "v" and "feature"', function() {
  var url = new Url('http://www.youtube.com/watch?v=JLGRkYYmJgQ&feature=g-vrec');
  var expected = undefined;
  var actual = undefined;

  expected = 'JLGRkYYmJgQ';
  actual = url.param('v');
  deepEqual(actual, expected, 'should get the value of param "v" by name');

  expected = 'g-vrec';
  actual = url.param('feature');
  deepEqual(actual, expected, 'should get the value of param "feature" by name');
});