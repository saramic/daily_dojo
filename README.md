# Daily Dojo

Coding related daily practice to improve muscle memory of various techniques.

## Techniques

* [vi in the browser](#vi-in-the-browser) ([Vimium](http://vimium.github.io/) for chrome)
* [ruby TDD kata](#ruby-tdd-kata) (TDD - Test Driven Development)
* [Neovim autorun tests](#neovim-autorun-tests)

## Technique details

### VI in the browser

([Vimium](http://vimium.github.io/) for chrome)

_browse the web with nothing but your keyboard_

key commands based on the [Vimium demo video](http://youtu.be/t67Sn0RGK54)

    j             - move down
    k             - move up
    d             - move half page down
    20d           - move 10 pages down
    u             - move half page up
    <SHIFT> - F   - follow a link and open in new tab
    F             - follow a link
    <SHIFT> - H   - go back
    <SHIFT> - L   - go forward
    <SHIFT> - K   - go tab right
    <SHIFT> - J   - go tab left
    x             - close tab
    o             - open book marks, history and google searches
                    navigate using shortcuts
    <SHIFT> - T   - search open tabs
    ?             - available keybaord shortcuts

**Dojo exercise**

  1. In browser search for "hn"
  1. `f` open hacker news
  1. `d` move down to find something with lots of comments
  1. `SHIFT-F` open in new tab
  1. on something that is interesting
  1. `SHIFT-F` open in new tab
  1. `SHIFT-T` find open tab with comments
  1. `j` down `k` up
  1. `d` down page `u` up page
  1. `20d` move a fair way down
  1. `gg` go to top
  1. `?` show options
  1. `f` navigate options
  1. `j` show advanced
  1. learn about
      1. `gu` go up url hierarchy
      1. `p` open clipboard's url
      1. `gs` view page source

### Ruby TDD Kata

Test Driven Development (TDD) in ruby using rspec. Assuming ruby and bundler
are installed. To implement a [Kata](https://codingdojo.org/kata/). Following
the TDD rules:

  1. **Red** - write a failing test
  1. **Green** - make the test pass (and only the test pass) in fastest and
     simplest fashion
  1. **Refactor** - clean up the code removing duplication (DRY) and improving
     it's readability. By running tests confirm everything still works and no
     functionality has been changed.

**Dojo exercise**

  1. `mkdir ruby_tdd/YYYYMMDD_kata_name` to create a new directory
  1. `bundle init` to use bundler
  1. to add rspec as a dependency
```
cat >> Gemfile
gem "rspec"
```
  1. `bundle` to bundle install new dependency rpsec
  1. `rspec --init` to create skeleton rspec setup
  1. using an example of a [tennis kata](https://codingdojo.org/kata/Tennis/)
  1. write out a basic test for first best case
```
cat >> spec/tennis_spec.rb
require 'tennis'

RSpec.describe Tennis do
  subject(:tennis) { Tennis.new }
  context 'beginning of the game' do
    it 'returns love all' do
      expect(tennis.score).to eq 'love all'
    end
  end
end
```
  1. `rspec` run test to see it fail on
     ```
     cannot load such file -- tennis
     ```
  1. create a `tennis.rb` implementation file in a new `lib` directory
     ```
     mkdir lib
     touch lib/tennis.rb
     ```
  1. `rspec` run test to see it fail on
     ```
     uninitialized constant Tennis
     ```
  1. write out a basic Tennis class
```
cat >> lib/tennis.rb
class Tennis
end
```
  1. `rspec` run test to see it fail on
     ```
     undefined method `score' for #<Tennis:0x00007fd0739d33e8>
     ```
  1. overwrite the Tennis class (single `>`) with an implementation of `score`
     method
```
cat > lib/tennis.rb
class Tennis
  def score
    'love all'
  end
end
```
  1. `rspec` run test to see it pass
```
Tennis
  beginning of the game
    returns love all

1 example, 0 failures
```
  1. **Refactor** - maybe too early on at this stage?
  1. continue **Red**, **Green**, **Refactor** till problem complete

### Neovim autorun tests

Assuming you have neovim installed and want to write ruby tests in one split,
implementation in another split and a terminal with continually running tests
in another.

**Dojo exercise**

  1. assuming a test setup as per [ruby TDD kata]
  1. add guard
     ```
     cat >> Gemfile
     gem "guard"
     gem "guard-rspec"
     ```
     bundle
  1. `guard init rspec` configure guard
  1. `vi` open neovim
  1. `:e spec/tennis_spec.rb` edit the spec file
  1. `:vsplit lib/tennis.rb` edit the implementation file
  1. `:vsplit | terminal` vsplit a terminal, or `vs | te`
  1. `guard` in terminal
  1. `<CTRL>-\ <CTRL>-n` to go to navigation mode in terminal under neovim
  1. `<CTRL>-w l` to jump to a different split (l for one to right)
  1. `:w` save the test and the terminal should re-run tests
  1. `<CTRL>-w h` to jump back to the left
  1. `i` to put terminal into insert mode

