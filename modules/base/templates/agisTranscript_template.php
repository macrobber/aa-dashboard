<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script>
        google.charts.load('current', {
            'packages': ['map', 'geochart', 'linechart', 'gauge', 'corechart', 'bar']
        });
    </script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

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

        .agisQuestion {
            background-color: #bdbaba;
            border-radius: 6px;
            padding-left: 10px;
            padding-right: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
            margin-top: 10px;
            text-align: right;
            font-size: 18px;
        }

        .agisAnswer {
            background-color: #76bd2a;
            border-radius: 6px;
            padding-left: 10px;
            margin-top: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
            text-align: left;
            font-size: 18px;

        }

        .agisCustomer {
            background-color: #d8ffdb;
            padding: 10px;
            border-radius: 5px;
            margin-top: 10px;
        }

        .collapsible {
            background-color: #eee;
            color: #444;
            cursor: pointer;
            padding: 18px;
            width: 100%;
            border: none;
            text-align: left;
            outline: none;
            font-size: 15px;
        }

        /* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
        .active,
        .collapsible:hover {
            background-color: #ccc;
        }

        /* Style the collapsible content. Note: hidden by default */
        .content {
            padding: 0 18px;
            display: none;
            overflow: hidden;
            background-color: #f1f1f1;
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

    <div class="agisTranscript" id="agisTranscript"></div>
    <button id="myBtn" style="display: none">Open Modal</button>

    <div class="agisTranscriptCustomer" id="agisTranscriptCustomer">

    </div>
</div>


</div>
<script type="module" src="aaServerSide.js"></script>
<!-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUX4tS-wopC34UQ0kI14s9OWu8FOYpU1g" type="text/javascript"></script> -->