var errors = [];

var assertEquals = function(message, expected, actual) {
    var correct = (expected === actual);

    if (!correct) {
        errors.push(message + '; expected = "' + expected + '"; actual = "' + actual + '"');
    }
};

var testUrlWithoutParams = function() {
    var url = new Url('http://www.youtube.com/');
    var expected = undefined;
    var actual = url.param('v');
    assertEquals('should return nothing for a url without params', expected, actual);
};

var testUrlWithParams = function() {
    var url = new Url('http://www.youtube.com/watch?v=JLGRkYYmJgQ&feature=g-vrec');
    var expected = undefined;
    var actual = undefined;

    expected = 'JLGRkYYmJgQ';
    actual = url.param('v');
    assertEquals('should return the correct param', expected, actual);

    expected = 'g-vrec';
    actual = url.param('feature');
    assertEquals('should return the correct param', expected, actual);
};

var runTests = function() {
    errors = [];

    testUrlWithoutParams();
    testUrlWithParams();

    if (errors.length == 0) {
        console.log('success');
    } else {
        for (var i = 0; i < errors.length; i++) {
            console.log(errors[i]);
        }
    }
};