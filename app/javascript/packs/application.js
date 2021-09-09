// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
// require("jquery-ujs")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

import "./my_js";
// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
// import "./weather";

import { weather } from './weather';
import { initMapbox } from '../plugins/init_mapbox';

document.addEventListener('turbolinks:load', () => {
  weather();
  initMapbox();
})

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-delete-product', {
  title: "Are you sure you wish to delete this product from your farm?",
  text: "This action cannot be undone",
  icon: "warning",
  buttons: true
}, (value) => {
  if (value) {
    const link = document.querySelector('#delete-link-product');
    link.click();
  }
});

initSweetalert('#sweet-alert-delete-order-product', {
  title: "Are you sure you wish to delete this product from your basket?",
  text: "This action cannot be undone",
  icon: "warning",
  buttons: true
}, (value) => {
  if (value) {
    const link = document.querySelector('#delete-link-order-product');
    link.click();
  }
});

initSweetalert('#sweet-alert-delete-farm', {
  title: "Are you sure you wish to delete this product from your farm?",
  text: "This action cannot be undone",
  icon: "warning",
  buttons: true
}, (value) => {
  if (value) {
    const link = document.querySelector('#delete-link-farm');
    link.click();
  }
});

import "controllers"
