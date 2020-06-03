console.log("Made it to agis-owa-js");
var toggleMenu = document.getElementById('agis-mobile-menu-button');

toggleMenu.addEventListener('click', openMenu);

var myWidth = screen.availWidth;
myWidth = myWidth - 20;

console.log('AvailWidth is: ', myWidth)


/* var agisSiteFilter = document.getElementById('agis-site-filter') */
/* agisSiteFilter.style.width = myWidth + 'px;'; */
document.getElementById('agis-site-filter').setAttribute("style", "width: " + myWidth + "px;")
document.getElementById('agis-main-container').setAttribute("style", "width: " + myWidth + "px;")

var moo = document.getElementsByClassName("owa_reportSectionContent");
/* moo[4].setAttribute("style", "width: " + myWidth + "px;") */
/*
for(var i =- 0; moo.length; i++) {
    moo[i].setAttribute("style", "width: " + myWidth + "px;")
}
*/

function openMenu (event) {
    var x = document.getElementById('agis-mobile-menu');

    if (x.style.display === 'block') {
        x.style.display = 'none';
        
    } else {
        x.style.transition = "width 2s;"
        x.style.display = 'block';
        x.style.position= 'absolute';
        x.style.zIndex = "100"
    }
}