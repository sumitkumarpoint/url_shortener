$(document).ready(function () {
    $('#new_url').validate({
        rules: {
            'url[original_url]' : {
                required: true,
                url: true
            }
        },
        messages: {
            'url[original_url]' : {
                required: "Please enter a URL.",
                url: "Please enter a valid URL. (i.e. https://twitter.com)",
            }
        }
    })
})