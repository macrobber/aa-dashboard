<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
        google.charts.load('current', {
            'packages': ['map', 'geochart', 'linechart', 'gauge', 'corechart', 'bar']
        });
    </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
  <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>


  <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
  <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>

    <link href="analyticsCss.css" rel="stylesheet" type="text/css" media="all">
    <style>
        html,
        body,
        #container {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #agisGeoMap {
            height: 600px;
            /* The height is 400 pixels */
            width: 100%;
            /* The width is the width of the web page */
        }
    </style>
</head>
<div class="container" id="container">
<div id="myModal" class="modal">

<!-- Modal content -->
<div class="modal-content" id="modal-content">
  <span class="close">&times;</span>
  <p style="font-size: 24px">Questions relating to this NLP:</p>
  <div class="modalClear" id="modalClear" style="background-color: #eaeaea; border-radius: 10px; padding: 10px; font-size: 18px;">
  <!-- <div class="modalText" id="modalText"></div> -->
  </div>
</div>
<button id="myBtn" style="display: none">Open Modal</button>

</div>
<div class="row">
          <br><br>
          <div class="col-sm-4">
            <center>
              <p>Total Visitors <sup>1</sup></p>
            </center>
            <div class="" id="agisTotalVisitorChart" style="font-size: 36px; text-align: center;"></div>

          </div>
          <div class="col-sm-4">
            <center>
              <p>Total Did Engage <sup>2</sup></p>
            </center>
            <div class="" id="agisTotalDidEngageChart" style="font-size: 36px; text-align: center;"></div>
          </div>
          <div class="col-sm-4">
            <center>
              <p>Total Engagements <sup>3</sup></p>
            </center>
            <div class="" id="agisTotalEngagementChart" style="font-size: 36px; text-align: center;"></div>
          </div>
        </div>
        <div class="row">
          <br><br>
          <div class="col-sm-6" style="display:inline-block; margin: 0 auto; text-align: center;">
            <center>
              <p>Engagement Percentage <sup>4</sup></p>
            </center>
            <div class="" id="agisEngagementPercentage" style="display:inline-block; margin: 0 auto; text-align: center;"></div>
          </div>
          <div class="col-sm-6" style="display:inline-block; margin: 0 auto; text-align: center; ">
            <center>
              <p>Average Engagement Percentage <sup>5</sup></p>
            </center>
            <div class="" id="agisAverageEngagementPercentage" style="display:inline-block; margin: 0 auto; text-align: center; "></div>
          </div>

        </div>

        <br><br><br>
        <hr>

        <p><sup>1</sup><i> Total Visitors means the total number of visitors to the site.</i></p>
        <p><sup>2</sup><i> Total Did Engage is the number of times a visitor
            clicked the chat icon.</i></p>
        <p><sup>3</sup><i> Total Engagements means the the number of questions asked via chat by the user.</i></p>
        <p><sup>4</sup><i> Percentage of users who opened chat.</i></p>
        <p><sup>5</sup><i> Average number of questions asked across all users.</i></p>

</div>
<script type="module" src="aaServerSide.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUX4tS-wopC34UQ0kI14s9OWu8FOYpU1g" type="text/javascript"></script>