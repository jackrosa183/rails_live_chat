import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["time"]

    connect() {
        this.convertToLocalTime();
    }

    convertToLocalTime() {
        this.timeTargets.forEach((element) => {
            const utcTime = new Date(element.dataset.utcTime)
            const newTime = utcTime.toLocaleString("en-US", {timeZone: "America/New_York"})
            element.innerText = newTime
        });
    }
}
