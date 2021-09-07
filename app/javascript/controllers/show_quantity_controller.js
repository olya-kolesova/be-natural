import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = ['form', 'links'];

  connect() {
    console.log(this.element);
    console.log(this.formTarget);
    console.log(this.linksTarget);
  }

  show(event) {
    event.preventDefault();

  fetch(this.formTarget.action, {
    method: 'POST',
    headers: { 'Accept': "application/json", 'X-CSRF-Token': csrfToken() },
    body: new FormData(this.formTarget)
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data)
    });
  }
}
