# Daily Dojo

Coding related daily practice to improve muscle memory of various techniques.

## Techniques

* [vi in the browser](#vi-in-the-browser) ([Vimium](http://vimium.github.io/) for chrome)
  - _5 min_
  - muscle memory for basic usefull key combinations

* [ruby TDD kata](ruby_tdd/README.md) (TDD - Test Driven Development)
  - _15 min - 2 hours_
  - muscle memory for ES6 project setup
  - muscle memory for TDD - red, green, refactor style problem solving

* [ES6 TDD kata](es6_tdd/README.md)
  - _15 min - 2 hours_
  - muscle memory for ES6 project setup
  - muscle memory for TDD - red, green, refactor style problem solving

* [Neovim autorun tests](#neovim-autorun-tests)
  - _5 min_
  - muscle memory for basic usefull key combinations

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

