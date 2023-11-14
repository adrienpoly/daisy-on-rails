import { Controller } from '@hotwired/stimulus'
import { useClickOutside } from 'stimulus-use'

export default class extends Controller {
  static targets = ['summary']

  connect () {
    useClickOutside(this)
    this.element.addEventListener('toggle', this.toggle.bind(this))
  }

  disconnect () {
    this.element.removeEventListener('toggle', this.toggle)
  }

  clickOutside (event) {
    this.#close(event)
  }

  // Private

  toggle (event) {
    if (this.element.open) {
      this.element.setAttribute('aria-expanded', true)
    } else {
      this.element.setAttribute('aria-expanded', false)
    }
  }

  #close (event) {
    this.element.open = false
  }
}
