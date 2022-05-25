import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log( gon.yash)
    gon.watch
    this.element.textContent = "goodbye yash!"
  }
}
