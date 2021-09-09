const url = 'https://api.openweathermap.org/data/2.5/weather?q=london&appid=d0381c5b1d008779c8b00a743459a7f3&units=metric';

const city = document.querySelector('#city');
const description = document.querySelector('#description');
const temperature = document.querySelector('#temperature');


fetch(url)
.then(response => response.json())
.then((data) => {
  console.log(data);
  city.innerHTML = data.name;
  description.innerHTML = data.weather[0].description;
  temperature.innerHTML = data.main.temp;
});
