
var options = {
    url: `https://app.ticketmaster.com/discovery/v2/events.json?keyword=${keyword}&city=${city}&size=${numResults}&apikey=4YWDBJED6GiApvdUBnHWa3hVuiXC4YnJ`
}



$.ajax(options).done((resp) => {
    resp.Search.forEach(function (result) {
        var
    })
})



