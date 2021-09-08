import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['form', 'form2', 'links', 'increase'];

  connect() {

  }

  show(event) {
    event.preventDefault();
    const container = event.currentTarget.parentElement
    fetch(event.currentTarget.action, {
      method: 'POST',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.inserted_item) {
          this.linksTarget.insertAdjacentHTML("beforeend", data.inserted_item);
        }
        container.innerHTML = data.form;
      });
  }

  decrease(event) {
    const button = event.target.parentElement.lastElementChild
    const input = event.target.nextElementSibling.firstElementChild
    input.value = (parseInt(input.value, 10) - 1)
    button.click();
  }

  increase(event) {
    const button = event.target.nextElementSibling
    const input = event.target.previousElementSibling.firstElementChild
    input.value = (parseInt(input.value, 10) + 1)
    button.click();
  }

  update_quantity(event) {
    event.preventDefault();
    const container = event.currentTarget.parentElement
    fetch(event.currentTarget.action, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
      body: new FormData(event.currentTarget)
    })
      .then(response => response.json())
      .then((data) => {
        container.innerHTML = data.form;
      });
  }

}
