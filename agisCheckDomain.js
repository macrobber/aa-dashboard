console.log('**** Made it inside agisCheckDomain.js')

var theDomain = document.getElementById("owa_reportSiteFilterSelect").options[
    document.getElementById("owa_reportSiteFilterSelect").selectedIndex
  ].text;
  console.log("(((()))) Domain Selected i2: ", theDomain);

  if (theDomain != null) {
    // a domain has been selected.
  } else {
    theDomain = ".";
  }

  fetch(
    //"https://chat.jasonchats.com:8080/api/getInteractions?domain=primenumberfarms.com",
    "https://chat.jasonchats.com:8080/api/getInteractions?domain=" + theDomain,

    {
      //  fetch("https://chat.jasonchats.com:8080/api/getInteractions?domain="+passedDomain, {
      method: "get",
      headers: {
        Accept: "application/json",
        "Content-Type": "application/json",
      },
    }
  )
    .then((response) => {
      return response.json();
    })
    .then((data) => {
      console.log('YYYYY inside getUserInteractions - data passed: ', data)
      if(data.length == 0) {
        console.log('BOOOOOOOOOOOM - no data - dont display...');
        document.getElementById('owa_admin_nav_subgroup_Dashboard').style.display = 'none'



      }
      //getAgisInteractions(data);
      //console.log('inside getUserInteractions - data passed: ', data)
    });
