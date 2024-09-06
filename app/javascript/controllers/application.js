import { Application } from "@hotwired/stimulus"
import { TimezoneController } from "./timezone_controller"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
application.register("timezone", TimezoneController);
window.Stimulus   = application

export { application }
