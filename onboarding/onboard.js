console.log('Inside onboard.js');

function getSites() { 
//fetch("http://primenumberdesigns.com/dashboard/api/?owa_apiKey=1a306ab16a055fd0bd1450799e61e9c8&owa_module=base&owa_version=v1&owa_do=sites", {
    fetch("http://primenumberdesigns.com/dashboard/api/?owa_module=base&owa_version=v1&owa_do=sites", {
    method: "get",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
      "x-api-key":"1a306ab16a055fd0bd1450799e61e9c8"
    }
  })
    .then(response => {
    //      console.log('responce: ', response)
      return response.json();
    })
    .then(data => {
        console.log('Then data: ', data)
        
        console.log('Data drilldownj: ', data.data)
        //console.log('Object Keys ID: : ', data.data[0].keys)

        //var myOjb2 = JSON.parse(data.data)

        console.log('Testing Here: ', data.data.wasPersisted)
        console.log('MyObj2: ', Object.keys(data.data).data)

        for (var key in data.data){
            console.log('Moo1: ', key)
            var keyHolder = key;
            console.log("Moo2: ", keyHolder)
            console.log('Moo3: ', keyHolder.name)
        }
        var myNewObj = data.data;
        console.log('myNewObj: ', myNewObj)

        Object.keys(myNewObj).map(function(key) { 
            console.log('baseName: ', myNewObj[key].name)
            console.log('Name: ', myNewObj[key].properties.domain.value)
            console.log('SiteID: ', myNewObj[key].properties.site_id.value)
        }
         );
/*
        var myObj = data.map(function(data) {
            console.log('Moo: ', data.wasPersisted)
        })
*/
    });
}
function getURLstring() {
    console.log('Inside getURLstring')
    var newSite = getUrlVars()["newSite"];
    var domain = getUrlVars()["domain"];
    var domain2 = domain.toString();

    var domainClean = decodeURIComponent(domain2) 


    var name = getUrlVars()["name"];
    var description = getUrlVars()["description"]
    console.log('New site passed: ', newSite)
    console.log('New domain passed: ', domainClean)
    console.log('New name passed: ', name)
    console.log('New description passed: ', description)
    if(newSite == 1){
        console.log('BOOOM create a new site. ')
        createNewSite(domainClean, name, description)
    }

}

function createNewSite(domain, name, description) {

    console.log("inside createNewSite - passed domain: ", domain)
    console.log("inside createNewSite - passed name: ", name)
    console.log("inside createNewSite - passed description: ", description)

//    fetch("http://primenumberdesigns.com/dashboard/api/?owa_module=base&owa_version=v1&owa_do=sites", {
    fetch("http://primenumberdesigns.com/dashboard/api/?owa_module=base&owa_version=v1&owa_do=sites&owa_domain="+domain +"&owa_name=" + name, {        
        method: "post",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json",
          "x-api-key":"1a306ab16a055fd0bd1450799e61e9c8"
        }
      })
        .then(response => {
        //      console.log('responce: ', response)
          return response.json();
        })
        .then(data => {
            console.log('Then data: ', data)
            
    /*
            var myObj = data.map(function(data) {
                console.log('Moo: ', data.wasPersisted)
            })
    */
        });

}


function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(m,key,value) {
        vars[key] = value;
    });
    return vars;
}

window.onload = function() {
    this.getURLstring();
    this.getSites()
}