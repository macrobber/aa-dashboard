// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

var map;
var centerCords = {
  lat: 36.1294,
  lng: -82.866,
};
var InforObj = [];

function addMarkerInfo(data) {
  var markersOnMap = [];

  for (var iCounter = 0; iCounter < data.length; iCounter++) {
    markersOnMap.push({
      placeName: data[iCounter].city,
      LatLng: [
        {
          lat: parseFloat(data[iCounter].lat),
          lng: parseFloat(data[iCounter].lon),
        },
      ],
    });
  }

  for (var i = 0; i < markersOnMap.length; i++) {
    //      console.log('PRE-Raw date: ', data[i].Created_date)
    var date = new Date(data[i].Created_date);
    //      console.log('NEW NEW date: ', date.toString())
    let timePre = date.toDateString();

    var contentString =
      '<div id="content"><h1>' +
      markersOnMap[i].placeName +
      "</h1>" +
      data[i].name +
      "<br>" +
      data[i].city +
      " " +
      data[i].region +
      ", " +
      data[i].country +
      "<br>" +
      "<p>Visited on: " +
      timePre +
      "<br>Did Engage: " +
      data[i].agisDidEngage +
      "<br>Total Engagements: " +
      data[i].agisTotalEngagements +
      "<br></p></div>";

    let myMarkerCharacter = data[i].name;
    myMarkerCharacter = myMarkerCharacter.substr(4, 1);

    const marker = new google.maps.Marker({
      position: markersOnMap[i].LatLng[0],
      label: myMarkerCharacter,
      gestureHandling: "greedy",
      animation: google.maps.Animation.DROP,
      map: map,
    });

    const infowindow = new google.maps.InfoWindow({
      content: contentString,
      maxWidth: 250,
    });

    marker.addListener("click", function () {
      closeOtherInfo();
      infowindow.open(marker.get("map"), marker);
      InforObj[0] = infowindow;
    });

    /*
      marker.addListener('mouseover', function() {
          closeOtherInfo();
          infowindow.open(marker.get('map'), marker);
          InforObj[0] = infowindow;
      });
      marker.addListener('mouseout', function() {
          closeOtherInfo();
          infowindow.close();
          InforObj[0] = infowindow;
      });

      */
  }
}

function closeOtherInfo() {
  if (InforObj.length > 0) {
    /* detach the info-window from the marker ... undocumented in the API docs */
    InforObj[0].set("marker", null);
    /* and close it */
    InforObj[0].close();
    /* blank the array */
    InforObj.length = 0;
  }
}

function initMap(data) {
  //console.log("MOOOOOOO")
  map = new google.maps.Map(document.getElementById("agisGeoMap"), {
    zoom: 3,
    mapTypeId: "satellite",
    center: centerCords,
  });
  addMarkerInfo(data);
}

function myDomainSwitcher() {
  console.log("INSIDE DOMAIN SWITCHER....");
}

function drawMap(data, loadURL) {
  let newData = data;
  console.log("inside draw map XXX - data passed: ", data);
  const queryString = window.location.search;
  console.log("queryString", queryString);
  const urlParams = new URLSearchParams(queryString);
  const color = urlParams.get("owa_siteId");
  console.log("owa_siteId", color);

  //  console.log("inside drawMap: passed a URL to load of: ", loadURL)

  let thelat = parseFloat(data[0].lat);
  let thelon = parseFloat(data[0].lon);

  //console.log('data[0].name: ', data[0].name)

  if (data[0].name == loadURL) {
    //console.log("()()BOOM - found a match....")
  }

  let FilteredData = [];
  if (loadURL != null && loadURL != "all") {
    for (var iCounter = 0; iCounter < data.length; iCounter++) {
      //console.log("Draw map- domain: ", data[iCounter].name)
      if (data[iCounter].name == loadURL) {
        console.log("=====Draw map - found a match on ", loadURL);
        FilteredData.push(data[iCounter]);
      }
    }
    console.log("FILTERED DATA: ", FilteredData);
    data = [...FilteredData];
    newData = [...FilteredData];
    console.log("--- New DATA: ", data);
  }

  console.log("moooooooooo")
  
  if(!document.getElementById('agisGeoMap')) {
    console.log('GeoMap not active......')
  } else {
    console.log('GeoMap active......')
    initMap(data);
  }
  /*
  var isGeoAlive = document.getElementById('agisGeoMap');
  if (typeof isGeoAlive !== "undefined" && isGeoAlive.value == '') {
    console.log('GeoMap not active......')
  } else {
    console.log('GeoMap active......')
  }
*/
  //initMap(data);

  let totalDidEngage = 0;
  let totalEngagements = 0;
  let totalNotEngaged = 0;
  let totalRecords = data.length;

  for (var iCounter = 0; iCounter < data.length; iCounter++) {
    totalDidEngage = totalDidEngage + data[iCounter].agisDidEngage;
    totalEngagements = totalEngagements + data[iCounter].agisTotalEngagements;
    if (data[iCounter].agisDidEngage == 0) {
      totalNotEngaged = totalNotEngaged + 1;
    }
  }
  let baseNotEngaged = totalRecords - totalNotEngaged;
  let avgEngagementPercentage = totalEngagements / totalDidEngage;
  let baseNotEngagedPercentage = baseNotEngaged / totalRecords;
  baseNotEngagedPercentage = baseNotEngagedPercentage * 100;

  avgEngagementPercentage = avgEngagementPercentage * 100;
  avgEngagementPercentage = Math.round(avgEngagementPercentage);

  // Percentage Engagement GAUGE start
  var EngagedPercentage = google.visualization.arrayToDataTable([
    ["Label", "Value"],
    ["Engaged", baseNotEngagedPercentage],
  ]);

  var EngagedPercentageOptions = {
    width: 400,
    height: 120,
    redFrom: 90,
    redTo: 100,
    yellowFrom: 75,
    yellowTo: 90,
    minorTicks: 5,
  };
  var EngagedPercentageChart = new google.visualization.Gauge(
    document.getElementById("agisEngagementPercentage")
  );
  EngagedPercentageChart.draw(EngagedPercentage, EngagedPercentageOptions);
  // Percentage Engagement GAUGE stop

  // Percentage Average Engagement GAUGE start
  var AverageEngagedPercentage = google.visualization.arrayToDataTable([
    ["Label", "Value"],
    ["AVG Engage", avgEngagementPercentage],
  ]);

  var AverageEngagedPercentageOptions = {
    width: 400,
    height: 120,
    redFrom: 90,
    redTo: 100,
    yellowFrom: 75,
    yellowTo: 90,
    minorTicks: 5,
  };
  var AverageEngagedPercentageChart = new google.visualization.Gauge(
    document.getElementById("agisAverageEngagementPercentage")
  );
  AverageEngagedPercentageChart.draw(
    AverageEngagedPercentage,
    EngagedPercentageOptions
  );
  // Percentage Average Engagement GAUGE stop

  let counter = 0;
  let GeoData = [];

  let secondaryFreqData = [];

  let today = Date.now();

  let weekHolder = [];

  for (var i = 6; i >= 0; i--) {
    let tmpDate = Date.now() + -i * 24 * 3600 * 1000; // Add new day stepping back 7 days
    let tmpDate2 = new Date(tmpDate);
    weekHolder.push([
      new Date(tmpDate2.getFullYear(), tmpDate2.getMonth(), tmpDate2.getDate()),
      0,
    ]);
  }

  let dateCounter = 0;
  for (dateCounter = 0; dateCounter < totalRecords; dateCounter++) {
    let st = newData[dateCounter].Created_date;
    let dt = new Date(st);
    secondaryFreqData.push(
      new Date(dt.getFullYear(), dt.getMonth(), dt.getDate())
    );
  }

  let tmpFreqData = secondaryFreqData;
  let finalFreqData = [];

  var occurrences = {};
  for (var i = 0, j = tmpFreqData.length; i < j; i++) {
    occurrences[tmpFreqData[i]] = (occurrences[tmpFreqData[i]] || 0) + 1;
  }

  let stringCmp = "";
  let foundOccurance = 0;

  var testing = Object.entries(occurrences)[0].toString();

  let Testing = [];

  //for (var i = 0, j = Object.keys(occurrences).length; i <= j; i++) {
  for (var i = 0, j = secondaryFreqData.length - 1; i <= j; i++) {
    for (var myCounter2 = 0; myCounter2 < 7; myCounter2++) {
      let fuck1 = secondaryFreqData[i].toString();
      let fuck2 = weekHolder[myCounter2].toString();
      let fuck5 = null;
      let fuck6 = null;
      if (i > 0) {
        fuck5 = secondaryFreqData[i - 1].toString();
        fuck6 = fuck5.substr(0, 15);
      }
      let fuck3 = fuck1.substr(0, 15);
      let fuck4 = fuck2.substr(0, 15);

      if (fuck3 === fuck4) {
        if (fuck6 == fuck3) {
        } else {
          Testing.push([secondaryFreqData[i], occurrences[tmpFreqData[i]]]);
        }

        let totalOccurance =
          occurrences[tmpFreqData[i]] + occurrences[tmpFreqData[i - 1]];
        foundOccurance = 1;
        foundOccurance = 0;
      } else {
      }
    }
    finalFreqData.push([secondaryFreqData[i], occurrences[tmpFreqData[i]]]);
  }

  let newFinalEngagement = [];

  var found = 0;

  for (var myNewCounter = 0; myNewCounter < 7; myNewCounter++) {
    for (var x = 0; x < Testing.length; x++) {
      let fuckme = Testing[x].toString();
      let fuckme2 = fuckme.substr(0, 15);
      let fuck6 = weekHolder[myNewCounter].toString();
      let fuck20 = fuck6.substr(0, 15);
      if (fuck20 === fuckme2) {
        if (x > 0) {
          let currentFinData = Testing[x][0].toString();
          let previousFinData = Testing[x - 1][0].toString();
          if (currentFinData == previousFinData) {
          } else {
            newFinalEngagement.push(Testing[x]);
          }
        } else {
          newFinalEngagement.push(Testing[x]);
        }

        if (Testing[x] === finalFreqData[x - 1]) {
          console.log("+++++++++ Found a duplicate.....");
        }

        found = 1;
      }
    }
    if (found == 1) {
      //          console.log("One was found - don't add")
      found = 0;
    } else {
      newFinalEngagement.push(weekHolder[myNewCounter]);
      found = 0;
    }
  }
  //start usage chart

  var engagementsByDay = new google.visualization.DataTable();
  engagementsByDay.addColumn("date", "Time of Day");
  engagementsByDay.addColumn("number", "Engagements");
  engagementsByDay.addRows(newFinalEngagement);

  var engagementsByDayOptions = {
    title: "Engagements By Day",

    height: 500,
    hAxis: {
      format: "M/d/yy",
      gridlines: { count: 7 },
    },
    vAxis: {
      gridlines: { color: "none" },
      minValue: 0,
    },
  };
/*
  var UsageByDaychart = new google.visualization.ColumnChart(
    document.getElementById("agisUsageChart")
  );
*/

  //end usage chart
  // start global map with pins

  for (counter = 0; counter < totalRecords; counter++) {
    GeoData.push([
      parseFloat(newData[counter].lat),
      parseFloat(newData[counter].lon),
    ]);
  }
  //console.log("NEW DATA: ", GeoData);

  var GeoMap = new google.visualization.DataTable();
  GeoMap.addColumn("number", "lat");
  GeoMap.addColumn("number", "lon");
  GeoMap.addRows(GeoData);

  // stop global map with pins

  let GlobalData = [];
  var numCountry = 0;

  let myMapNames = [];

  const distinctCountries = [...new Set(newData.map((x) => x.country))];

  let newCountryCounter = [];
  let newCounterMoo = 0;

  for (var xx = 0; xx < distinctCountries.length; xx++) {
    for (var i = 0; i < newData.length; i++) {
      if (newData[i].country == distinctCountries[xx].toString()) {
        numCountry++;
        newCounterMoo = newCounterMoo + 1;
      }

      newCountryCounter.push(numCountry);
    }
    GlobalData.push([distinctCountries[xx], newCounterMoo]);
    newCounterMoo = 0;
  }

  var agisGlobalMap = new google.visualization.DataTable();
  agisGlobalMap.addColumn("string", "Country");
  agisGlobalMap.addColumn("number", "Count");
  agisGlobalMap.addRows(GlobalData);

  var GEOoptions = {
    showTooltip: true,
    showInfoWindow: true,
  };

  var mapOptions = {
    colorAxis: { colors: ["#fed130", "black", "#458b74"] },
    backgroundColor: "#81d4fa",
    datalessRegionColor: "#7fffd4",
    defaultColor: "#f5f5f5",
  };

  /*
  var globalGeoMap = new google.visualization.Map(
    document.getElementById("agisGeoMap")
  );
*/


if(!document.getElementById('agisGlobalMap')) {
  console.log('agisGlobalMap not active......')
} else {
  console.log('agisGlobalMap active......')
//    initMap(data);
var worldMap = new google.visualization.GeoChart(
  document.getElementById("agisGlobalMap")
);

}



  var TotalVisitorChartElem = new google.visualization.ColumnChart(
    document.getElementById("agisTotalVisitorChart")
  );

  console.log("MOO - just before agisTotalVisitorChart....")

  var agisTotalVisitors = document.getElementById("agisTotalVisitorChart");
  agisTotalVisitors.innerHTML = totalRecords;

  var agisTotalEngagedVisitors = document.getElementById(
    "agisTotalDidEngageChart"
  );
  agisTotalEngagedVisitors.innerHTML = totalDidEngage;

  var agisTotalEngagements = document.getElementById(
    "agisTotalEngagementChart"
  );
  agisTotalEngagements.innerHTML = totalEngagements;

  // draw maps
  //globalGeoMap.draw(GeoMap, GEOoptions);


  if(!document.getElementById('agisGlobalMap')) {
    console.log('agisGlobalMap not active......')
  } else {
    console.log('agisGlobalMap active......')
//    initMap(data);
worldMap.draw(agisGlobalMap, mapOptions);
  }



  //UsageByDaychart.draw(engagementsByDay, engagementsByDayOptions);



}

function getFromAgis(loadURL) {
  let myAnalyticsIP = document.getElementById("myIP");
  let myLat = document.getElementById("myLat");
  let myLon = document.getElementById("myLon");
  let firstLoadURL = null;

  console.log("INSIDE GET FROM AGIS: loadURL: ", loadURL);

  //  fetch("http://localhost:7000/analytics", {
  fetch("https://chat.jasonchats.com:7000/analytics", {
    method: "get",
    headers: {
      Accept: "application/json",
      "Content-Type": "application/json",
    },
  })
    .then((response) => {
      return response.json();
    })
    .then((data) => {
      drawMap(data, loadURL);
      //initMap(data);
    });
}

function getUserInteractions(loadURL) {
  let firstLoadURL = null;

  console.log("inside GetUserInteractions - url: ", loadURL);
  //console.log("moooooo")

  let passedDomain = "";
  if (loadURL != null) {
    let loadURLStripped = loadURL.substring(4, loadURL.length);
    console.log("STRIPPED: loadURL: ", loadURLStripped);
    passedDomain = loadURLStripped;
  } else {
    passedDomain = ".";
  }

  if (loadURL == "all") {
    passedDomain = ".";
  }

  //console.log("Inside getUserInteractions");
  //fetch("https://chat.jasonchats.com:8080/api/getInteractions?domain=", {
  fetch(
    "https://chat.jasonchats.com:8080/api/getInteractions?domain=primenumberfarms.com",
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
      //console.log('inside getUserInteractions - data passed: ', data)
      getAgisInteractions(data);
      //console.log('inside getUserInteractions - data passed: ', data)
    });
}

function getAgisInteractions(data) {
  console.log("Inside getAgisInteractions XXX - data passed: ", data);
  let fullData = data;

  let classificationCounts = {};
  let classificationNlp = [];

  //  console.log("Inside processUserInteractions - sentence: ", data[0].sentence);
  for (var i = 0; i < data.length; i++) {
    if (data[i].allClassifications.length > 0) {
      for (var x = 0; x < data[i].allClassifications.length; x++) {
        classificationNlp.push(data[i].allClassifications[x]);
      }
    }
  }
  var count = [];
  let myCounter = 0;
  classificationNlp.forEach(function (i) {
    count[i] = (count[i] || 0) + 1;
    myCounter++;
  });
  var f = count.entries();
  let ObjectCounter = Object.entries(count).length;
  var data = [];
  for (var i = 0; i < ObjectCounter; i++) {
    let moo = Object.keys(count)[i.toString()];

    let moo5 = moo.substring(0, moo.length - 3);
    let moo6 = moo5.replace(/([A-Z])/g, " $1").trim();

    let moo2 = Object.values(count)[i];
    //data.push({"x": moo, value: moo2})
    data.push({ x: moo6, value: moo2 });
  }


  console.log('Still inside getUserInteractions...')
  if(!document.getElementById('agisTranscript')) {
    console.log('agisTranscript not active......')
  } else {
    console.log('agisTranscript active......')
    console.log('agisTranscript is active - active data: ', fullData)

    console.log('CustomerID: ', fullData.user)


    const unique = [...new Set(fullData.map(item => item.user))];
    console.log('UNIQUE...', unique)
    //console.log('UNIQUE 1: ', unique[1])

    console.log('fulldata.length: ', fullData.length)



    for (var i = 0; i < unique.length; i++) {

      // create button for collapse start
      var x = document.createElement("BUTTON");
      x.setAttribute("class", "collapsible" )
      x.setAttribute("data-toggle", "collapse")
      x.setAttribute("data-target", '#'+unique[i])
      x.setAttribute("style", "font-weight: 700")


      //data-toggle="collapse" data-target="#demo"
      var t = document.createTextNode(unique[i]);
      x.appendChild(t);
      document.getElementById('agisTranscriptCustomer').appendChild(x)
      //document.body.appendChild(x);


      var customer = document.createElement('div');
      customer.setAttribute("id", unique[i] )
      customer.setAttribute("class", "agisCustomer" )
      customer.setAttribute("class", "collapse" )
      document.getElementById('agisTranscriptCustomer').appendChild(customer)

// create button for collaps stop
}



    

    for (var i = 0; i < fullData.length; i++) {
      console.log('CustomerID in loop: ', fullData[i].user)
      //console.log('CustomerQuestion in loop: ', fullData[i].originalSentence)
      //console.log('Customer Responce in loop: ', fullData[i].response)
/*

      if(unique[i] == fullData[i].user) {

            // create button for collapse start
            var x = document.createElement("BUTTON");
            x.setAttribute("class", "collapsible" )
            x.setAttribute("data-toggle", "collapse")
            x.setAttribute("data-target", '#'+fullData[i].user)
            x.setAttribute("style", "font-weight: 700")


            //data-toggle="collapse" data-target="#demo"
            var t = document.createTextNode(fullData[i].user);
            x.appendChild(t);
            document.getElementById('agisTranscriptCustomer').appendChild(x)
            //document.body.appendChild(x);


            var customer = document.createElement('div');
            customer.setAttribute("id",fullData[i].user )
            customer.setAttribute("class", "agisCustomer" )
            customer.setAttribute("class", "collapse" )
            document.getElementById('agisTranscriptCustomer').appendChild(customer)

      // create button for collaps stop
    }
*/
      var question = document.createElement('div');
      question.setAttribute("id",fullData[i].user )
      question.setAttribute("class", "agisQuestion" )
      var textnode = document.createTextNode(fullData[i].originalSentence)

//      var timeStamp2 = (new Date(fullData[i].timeStamp * 1000).toISOString().slice(0, 19).replace('T', ' '));
      //var timeStamp2 = (new Date(fullData[i].timeStamp * 1000).toISOString());

      var jsDate = new Date(fullData[i].timeStamp);

      var year = jsDate.getFullYear();
      var month = jsDate.getMonth() + 1;
      var date = jsDate.getDate();
      var hours = jsDate.getHours();
      var minutes = jsDate.getMinutes();
      var totalTimeStamp = month + '/' + date + '/' + year + ': ' + hours + ':' + minutes;
      var totalTimeStampAnswer = totalTimeStamp;

//      console.log('totalTimeStamp: ', totalTimeStamp)

      //var timeStamp = document.createTextNode('('+fullData[i].timeStamp + ')')
      var timeStamp = document.createTextNode('('+ totalTimeStamp + ')')
      question.appendChild(textnode)
      question.appendChild(timeStamp)
      document.getElementById(fullData[i].user).appendChild(question)

      var answer = document.createElement('div');
      answer.setAttribute("id",fullData[i].user )
      answer.setAttribute("class", "agisAnswer" )

      var newResult = fullData[i].response;
      newResult = newResult.toString();
      newResult = newResult.replace( /(<([^>]+)>)/ig, '');

//      console.log("NEWRESULT: ", newResult)

      // testing regex replacement string stop


      var textnode = document.createTextNode(' ' + newResult)

      //var textnode = document.createTextNode(fullData[i].response)
      
      var timeStampMyAnswer = document.createTextNode('('+ totalTimeStampAnswer + ')')

      answer.appendChild(timeStampMyAnswer)
      answer.appendChild(textnode)
      

     document.getElementById(fullData[i].user).appendChild(answer)
      ///fullData[i].allClassifications
    }
  
  }

  
  // create a tag (word) cloud chart
  var chart = anychart.tagCloud(data);

  // set a chart title
  chart.title(
    "Word Cloud for Most Used NLP's. Click a word to see individual questions."
  );
  // set an array of angles at which the words will be laid out
  //chart.angles([0])
  chart.angles([0, -25, 45]);
  // enable a color range
  chart.colorRange(true);
  // set the color range length
  chart.colorRange().length("60%");

  // add an event listener
  chart.listen("pointClick", function (e) {
    var url = "https://en.wikipedia.org/wiki/" + e.point.get("x");
    modal.style.display = "block";

    var modalHolder = document.getElementById("modalClear");
    let NLPClicked = e.point.get("x");
    //console.log('INSIDE CLICK: fullData: ', fullData)

    //modalUpdate.innerHTML = NLPClicked
    var clear = "<div class='modalText' id='modalText'></div>";
    modalHolder.innerHTML = clear;

    NLPClicked += "NLP";
    let NLPCleaned = NLPClicked;
    //NLPCleaned.replace(/\s+/g, '');
    NLPCleaned = NLPClicked.split(" ").join("");
    //console.log('-----===== NLPCleaned: ', NLPCleaned)

    for (var i = 0; i < fullData.length; i++) {
      if (fullData[i].allClassifications.length > 0) {
        for (var x = 0; x < fullData[i].allClassifications.length; x++) {
          let tmp = fullData[i].allClassifications[x];
          tmp.replace(/\s+/g, "");

          //if(fullData[i].allClassifications[x] == NLPClicked) {
          if (NLPCleaned == tmp) {
            var modalUpdate = document.getElementById("modalText");

            let CapitalizeIt =
              fullData[i].originalCompleteSentence.charAt(0).toUpperCase() +
              fullData[i].originalCompleteSentence.slice(1);
            //console.log("Capitalize it; ", CapitalizeIt);
            modalUpdate.insertAdjacentHTML("beforebegin", CapitalizeIt);
            modalUpdate.insertAdjacentHTML("beforebegin", "<br>");
          }
        }
      }
    }

    //window.open(url, "_blank");
  });

  // display the word cloud chart

  if(!document.getElementById('agisBubble')) {
    console.log('agisBubble not active......')
  } else {
    console.log('agisBubble active......')
    //initMap(data);
    chart.container("agisBubble");
    chart.draw();
  
  }
  


}
//request.send()
window.onload = function () {
  let loadURL = null;
  getFromAgis(loadURL);
  //getAgisInteractions();
  getUserInteractions(loadURL);
  //  drawMap();
};

// When the user clicks the button, open the modal
btn.onclick = function () {
  modal.style.display = "block";
};

// When the user clicks on <span> (x), close the modal
span.onclick = function () {
  modal.style.display = "none";
};

// When the user clicks anywhere outside of the modal, close it
window.onclick = function (event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
};

$(function () {
  $("#mySelect").change(function () {
    var selectedText = $(this).find("option:selected").text();
    var selectedValue = $(this).val();
    //alert("Selected Text: " + selectedText + " Value: " + selectedValue);
    getFromAgis(selectedValue);
    var clearWordBubble = document.getElementById("agisBubble");
    clearWordBubble.innerHTML = "";
    getUserInteractions(selectedValue);
  });
});
