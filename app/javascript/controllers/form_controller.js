import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["button", "form"];

  display() {
    this.formTarget.classList.remove("d-none");
    this.buttonTarget.classList.add("d-none");
  }
}
