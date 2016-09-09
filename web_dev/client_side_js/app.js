var copier = function(event) {
    //clone list item
    var clone = event.target.cloneNode(true);
    // add list item element with text node to end of list
    list.insertAdjacentElement('beforeend', clone);
}
var uoList = document.getElementById('list');
uoList.addEventListener("click", copier);