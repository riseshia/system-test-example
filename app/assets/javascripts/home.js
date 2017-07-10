function ready(fn) {
  if (document.attachEvent ? document.readyState === "complete" : document.readyState !== "loading"){
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', fn);
  }
}

ready(function() {
  var el = document.getElementById("ajax")
  el.addEventListener("click", function() {
    fetch("/api").then(function(res) {
      return res.json()
    }).then(function(json) {
      var target = document.getElementById("result")
      target.innerText = json.data
    })
    return false
  })
})
