import { Application } from "@hotwired/stimulus"
import PasswordVisibility from 'stimulus-password-visibility'
import CharacterCounter from 'stimulus-character-counter'

const application = Application.start()
application.register('character-counter', CharacterCounter)
application.register('password-visibility', PasswordVisibility)


// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
