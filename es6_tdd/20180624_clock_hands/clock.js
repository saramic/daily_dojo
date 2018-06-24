import moment from 'moment'

class Clock {
  constructor() {
  }

  setTime(time_string) {
    this.time = moment(time_string, "HH:mm")
  }

  hour_hand_angle() {
    let angle = this.time.get('hour')/12 * 360
    angle += this.minute_hand_angle() / 12
    return angle >= 360 ? angle - 360 : angle
  }

  minute_hand_angle() {
    return this.time.get('minute')/60 * 360
  }
}

export default Clock
