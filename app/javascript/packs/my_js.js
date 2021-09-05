// document.getElementById('form').addEventListener('click', function () {
//   evt.preventDefault();
//   alert("Added to basket");
// });



// addEventListener('click', function () {
//   alert("Random Message");
// });

const form = document.querySelectorAll("form");
form.forEach(function(element) {
element.addEventListener("submit", function() {
  // let greeting = "Hello";
  // console.log(greeting);
  alert("Added to basket!")
});
});
