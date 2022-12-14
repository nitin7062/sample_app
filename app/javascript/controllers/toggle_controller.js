import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect(){
    console.log("hii")
  }
  static targets = ["show", "unhide"];

  password() {

    if (this.value.textContent === "show") {
      this.value.textContent = "hide";
      this.input.type = "text";
    } else {
      this.value.textContent = "show";
      this.input.type = "password";
    }
  }

  get value() {
    return this.showTarget;
  }
  get input() {
    return this.unhideTarget;
  }
}