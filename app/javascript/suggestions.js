$(document).ready(function() {
    var locationInput = $("#location-input");
    var suggestionList = $("<select id='suggestion-select'></select>").insertAfter(locationInput);
    suggestionList.hide();

    locationInput.on("input", function() {
        var location = $(this).val();
        if (location.length > 3) {
            $.getJSON("/suggestions?location=" + location, function(suggestions) {
                suggestionList.empty();
                suggestions.forEach(function(suggestion) {
                    $("<option value='" + suggestion + "'>" + suggestion + "</option>").appendTo(suggestionList);
                });
                suggestionList.show();
            });
        } else {
            suggestionList.empty();
            suggestionList.hide();
        }
    });

    suggestionList.change(function() {
        locationInput.val($(this).val());
        suggestionList.hide();
    });
});


$(document).ready(function() {
    $("ul").click(function() {
        alert($(this).text());
    });
});