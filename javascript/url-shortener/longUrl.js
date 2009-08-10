var LongUrl = function(_longUrl) {
    var longUrl = _longUrl;

    var shortenerServiceUrl = 'http://api.bit.ly/shorten?'
        + 'version=2.0.1'
        + '&longUrl=' + longUrl
        + '&login=<your_bitly_login>'
        + '&apiKey=<your_bitly_api_key>'
        + '&history=0'
        + '&format=json&callback=?';

    this.makeShortAndDo = function(callback) {
        $.getJSON(shortenerServiceUrl, function(data) {
            callback(data.results[longUrl].shortUrl);
        });
    };
};
