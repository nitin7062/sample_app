import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="top"
export default class extends Controller {
  connect() {
    console.log("it's connected")
  }

  scroll_top() {
    console.log("INSIDE SCROLL_TOP");
    document.body.scrollTop = 0; // For Safari
    document.documentElement.scrollTop = 0;
  }
}