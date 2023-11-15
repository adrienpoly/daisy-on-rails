import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="leave-after"
export default class extends Controller {
  static classes = ['transitionTo', 'transition']
  static values = { delay: { type: Number, default: 3000 } }

  connect () {
    this.element.classList.add(...this.transitionClasses)
    setTimeout(() => {
      this.element.classList.add(...this.transitionToClasses)
    }, this.delayValue)
  }
}
