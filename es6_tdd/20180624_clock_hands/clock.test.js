import Clock from './clock'


[
  { time: '00:00', hourAngle:   0, minAngle:   0 },
  { time: '00:30', hourAngle:  15, minAngle: 180 },
  { time: '03:00', hourAngle:  90, minAngle:   0 },
  { time: '06:00', hourAngle: 180, minAngle:   0 },
  { time: '09:00', hourAngle: 270, minAngle:   0 },
  { time: '12:00', hourAngle:   0, minAngle:   0 },
].forEach( ({time, hourAngle, minAngle}) => {
  test(`at #{time} hour angle #{hourAngle} and minute angle #{minAngle}`, () => {
    const clock = new Clock
    clock.setTime(time)
    expect(clock.hour_hand_angle()).toEqual(hourAngle)
    expect(clock.minute_hand_angle()).toEqual(minAngle)
  })
})

