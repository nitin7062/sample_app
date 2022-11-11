import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="top"
export default class extends Controller {
  changeHeight(event){
    console.log('hellllllo')
    event.target.style.height = "auto";
    event.target.style.height = event.target.scrollHeight + "px";

  }
}