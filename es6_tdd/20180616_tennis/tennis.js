const scores = {
  0: 'love',
  1: 15,
  2: 30,
  3: 40,
}

class Tennis {
  constructor() {
    this.playerScores = {
      1: 0,
      2: 0,
    }
  }

  scores() {
    return this.vals().map( x => scores[x] )
  }

  score() {
    return this.winnerScore()
      || this.advantageScore()
      || this.deuceScore()
      || this.standardScore()
  }

  winnerScore() {
    if (this.haveWinner()) {
      return `game player ${this.leadingPlayer()}`
    }
  }

  advantageScore() {
    if (this.secondMax() >= 3 && !this.evenScores()) {
      return `advantage player ${this.leadingPlayer()}`
    }
  }

  deuceScore() {
    if (this.evenScores() && this.min() >= 3) {
      return 'deuce'
    }
  }

  standardScore() {
    let scores = this.scores()
    if (this.evenScores()) {
      scores = Array.from(new Set(this.scores()))
      scores = scores.concat(['all'])
    }
    return scores.join(" ")
  }

  haveWinner() {
    return !this.evenScores()
      && (this.max() > 3)
      && ((this.max() - this.secondMax()) >= 2)
  }

  leadingPlayer() {
    const max = this.max()
    return this.keys().find( x => this.playerScores[x] === max )
  }

  evenScores() {
    return this.min() === this.max()
  }

  scoreByPlayer(player) {
    if (!this.playerScores[player]) this.playerScores[player] = 0
    this.playerScores[player]++
  }

  keys() {
    return Object.keys(this.playerScores)
  }

  vals() {
    return this.keys().map( x => this.playerScores[x] )
  }

  min() {
    return Math.min.apply(null, this.vals())
  }

  secondMax() {
    const valsNoMax = this.vals().filter( e => e !== this.max() )
    //console.log(this.vals())
    //console.log(valsNoMax)
    return Math.max.apply(null, valsNoMax)
  }

  max() {
    return Math.max.apply(null, this.vals())
    return 'love all'
  }
}

export default Tennis
