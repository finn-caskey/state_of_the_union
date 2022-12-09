window.addEventListener('DOMContentLoaded',init,false);
            


  
function init() {
    var fieldset = document.getElementsByTagName('input');
    for (var i = 0; i < fieldset.length; i++) {
        fieldset[i].addEventListener('click', toggle, false);
    }
}

function toggle() {
    var id = this.id;
    switch (id) {
        case "wartoggle": {
            var ref = document.getElementsByClassName("war");
            for (var i = 0; i < ref.length; i++) {
                ref[i].classList.toggle("on")
            }
        };
        break;
        case "diplomacytoggle": {
            var ref = document.getElementsByClassName("diplomacy");
            for (var i = 0; i < ref.length; i++) {
                ref[i].classList.toggle("on")
            }
        };
        break;
        case "economytoggle": {
            var ref = document.getElementsByClassName("economy");
            for (var i = 0; i < ref.length; i++) {
                ref[i].classList.toggle("on")
            }
        };
        break;
        case "infrastructuretoggle": {
            var ref = document.getElementsByClassName("infrastructure");
            for (var i = 0; i < ref.length; i++) {
                ref[i].classList.toggle("on")
            }
        };
        break;
        case "civil-rightstoggle": {
            var ref = document.getElementsByClassName("civil-rights");
            for (var i = 0; i < ref.length; i++) {
                ref[i].classList.toggle("on")
            }
        };
        break;
    case "povertytoggle": {
            var ref = document.getElementsByClassName("poverty");
            for (var i = 0; i < ref.length; i++) {
                ref[i].classList.toggle("on")
            }
        };
        break;
    
    }
     
  }  