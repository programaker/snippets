$(document).ready(function() {
    $('#shortUrlButton').click(function() {
        var longUrlField = $('#longUrlField');
        var shortUrlField = $('#shortUrlField');        
        var longUrl = new LongUrl(longUrlField.val());

        longUrl.makeShortAndDo(function(generatedShortUrl) {
            shortUrlField.val(generatedShortUrl);
        });
    });
});
