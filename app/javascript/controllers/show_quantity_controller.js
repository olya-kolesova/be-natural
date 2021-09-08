import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['form', 'links', 'increase'];

  connect() {
    // console.log('Be Natural')
    // console.log(this.element);
    // console.log(this.formTarget);
    // console.log(this.linksTarget);
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
    const form = event.target.parentElement
    const input = event.target.nextElementSibling.firstElementChild
    input.value = (parseInt(input.value, 10) - 1)
    console.log(form)
    form.submit()
  }

  increase(event) {
    const form = event.target.parentElement
    const input = event.target.previousElementSibling.firstElementChild
    input.value = (parseInt(input.value, 10) + 1)
    console.log(form)
    form2Target.submit()
  }

  update_quantity(event) {
    event.preventDefault();
    fetch(event.currentTarget.action, {
      method: 'PATCH',
      headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
      body: new FormData(form2)
    })
      .then(response => response.json())
      .then((data) => {
        container.innerHTML = data.form2;
      });
  }

}
