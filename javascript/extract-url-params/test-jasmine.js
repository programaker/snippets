describe('Url without parameters', function() {
  var url = new Url('http://www.youtube.com/');

  it('should return "undefined" when trying to get a param value by name', function() {
    var v = url.param('v');
    expect(v).toBeUndefined();

    var feature = url.param('feature');
    expect(feature).toBeUndefined();
  });
});

describe('Url with the parameters "v" and "feature"', function() {
  var url = new Url('http://www.youtube.com/watch?v=JLGRkYYmJgQ&feature=g-vrec');

  it('should get the value of param "v" by name', function() {
    var v = url.param('v');
    expect(v).toEqual('JLGRkYYmJgQ');
  });

  it('should get the value of param "feature" by name', function() {
    var feature = url.param('feature');
    expect(feature).toBe('g-vrec');
  });
});