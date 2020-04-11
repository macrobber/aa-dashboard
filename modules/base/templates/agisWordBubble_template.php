<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
        google.charts.load('current', {
            'packages': ['map', 'geochart', 'linechart', 'gauge', 'corechart', 'bar']
        });
    </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>
  <script src="https://cdn.anychart.com/releases/v8/js/anychart-tag-cloud.min.js"></script>
  -->
  
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

        #agisBubble {
            height: 800px;
            /* The height is 400 pixels */
            width: 100%;
            /* The width is the width of the web page */
        }
    </style>
</head>
<div>
    <div id="myModal" class="modal">

<!-- Modal content -->
<div class="modal-content" id="modal-content">
  <span class="close">&times;</span>
  <p style="font-size: 24px">Questions relating to this NLP:</p>
  <div class="modalClear" id="modalClear" style="background-color: #eaeaea; border-radius: 10px; padding: 10px; font-size: 18px;">
  <!-- <div class="modalText" id="modalText"></div> -->
  </div>
</div>

</div>  
  <div class="agisBubble" id="agisBubble"></div>
    <button id="myBtn" style="display: none">Open Modal</button>
</div>
<script type="module" src="aaServerSide.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUX4tS-wopC34UQ0kI14s9OWu8FOYpU1g" type="text/javascript"></script>