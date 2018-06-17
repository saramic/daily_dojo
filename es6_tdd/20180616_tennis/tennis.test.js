import Tennis from './tennis'

[
  { scores: [], score: 'love all' },
  { scores: [1], score: '15 love' },
  { scores: [1, 1], score: '30 love' },
  { scores: [1, 1, 1], score: '40 love' },
  { scores: [1,1,1,1], score: 'game player 1' },
  { scores: [2,2,2,2], score: 'game player 2' },
  { scores: [1,2], score: '15 all' },
  { scores: [1,2,2], score: '15 30' },
  { scores: [1,2,2,2], score: '15 40' },
  { scores: [1,2,2,1,1,2], score: 'deuce' },
  { scores: [1,2,2,1,1,2,1], score: 'advantage player 1' },
  { scores: [1,2,2,1,1,2,1,2], score: 'deuce' },
  { scores: [1,2,2,1,1,2,1,2,2], score: 'advantage player 2' },
  { scores: [1,2,2,1,1,2,1,2,2,2], score: 'game player 2' },
  // more players?
  { scores: [1,2,3], score: '15 all' },
  { scores: [2,3,3], score: 'love 15 30' },
  { scores: [1,1,1,2,2,2,3,3,3], score: 'deuce' },
  { scores: [1,2,2,3,3,3,3,88,88,88,88,88], score: 'advantage player 88' }, // advantage between 2 players
  { scores: [1,2,2,3,3,88,88,88,88], score: 'game player 88' },

].forEach( ({scores, score}) => {
  test(`player scores ${scores} score is ${score}`, () => {
    const tennis = new Tennis;
    scores.forEach((player) => {
      tennis.scoreByPlayer(player)
    })
    expect(tennis.score()).toEqual(score)
  })
})
