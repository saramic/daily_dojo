# VI everywhere

  "What's your super power"

  Michael Milewski
  @saramic twitter/github

  Developer at Fresho!


# Fresho!

  - **small** automous team
  - pairing / testing
  - daily active users

  - We want
    - full stack, dev ops ➡ frontend
    - any level
    - team fit

    "Come talk to me"


# Rote learning

  - alphabet
  - numbers
  - ride a bike
  - times tables
  - language

  important to engage in higher level thinking


# Second nature as a programmer

  - touch typing
  - keyboard shortcuts
  - language
  - technique - TDD


# Where do we start?

  puts "hello world"


# Where did I start?

  - slackware linux install
  - 25 floppy disks


# Why VI?

  ex line editor


# VI = VIsual

  shortest unambigous abbreviation


# VIM = Vi IMproved


# How to exit the Vim editor?

  :q


# Demo - AdventOfCode 2017

Day 4 High-Entropy Passphrases

  don't duplicate words

  cat dog mouse VALID
  cat dog cat   NOT VALID


# What we did

  **Iterative Exploration**

  1. test case
  1. feed to ruby code
  1. perform calculation
  1. summarize calculation
  1. run for actual data file


# Answer - AdventOfCode 2017

data

    curl 'http://adventofcode.com/2017/day/4/input' \
      -H "Cookie: session=${ADVENT_OF_CODE_COOKIE}" > day4.txt

answer  open http://adventofcode.com/2017/day/4
result  open http://adventofcode.com/2017/leaderboard/day/4 ~3min


# What we learnt?

set -o vi     # get into vi mode
set -o emacs  # get me out of here

ESC           # go into "normal mode"
/             # search for a term

**Navigation**
h j k l       # ⬅ ⬆ ⬇ ➡
gg            # top
G             # bottom
^             # begninning of line (~ regex)
$             # end of line        (~ regex)


# What we learnt?

**Insert mode**
a  A          # append after cursor/end of line
i  I          # insert before cursor/beginning of line

**Editing**
.             # redo
u             # undo
cw            # change a word
x  X          # delete character/previous character


# What we learnt

w  b          # move word forward / backward
w4 b4         # move 4 words forward / backward
W  B          # move whitespace word forward / backward
ct<CHAR>      # change to '.' character
yw            # yank (copy) word
y4w           # yank 4 words

v             # open vi editor


# Iterative exploration

* building up expressions in programming language
    irb             # ruby REPL
    rails console
    python
    lein repl       # clojure REPL


# Iterative exploration

* not all REPL use ReadLine
  * node
  * iex
```
  brew install rlwrap

  rlwrap --always-readline node
  rlwrap --always-readline iex
```

# Anything using ReadLine

* ruby program

    ```sh
    ruby -e 'require "readline"; \
    while line = Readline.readline("> ", true); \
    p line; \
    end;'
    ```


# Iterative exploration

* buidling up database query
```
psql

cat >> ~/.inputrc
set editing-mode vi
```


# Iterative exploration

* buidling up database query
```
mysql

cat >> ~/.editrc
bind -v
```

* or mash the keyboard

<ESC> <ENTER> x 2


# Great for laggy connections


# Demo - vi in browser


# What we learnt

Vimium - mouse less control of the browser

# 1, 2, 3 example


# 1, 2, 3 example

  - pinned new actions to existing

  rote != higher level thinking

  rote is corner stone of higher level thinking

  free up your brain
    to make major leaps
    in leaerning

# Rote learning

  1. come up with a script
    ```
    set -o vi
    rube -e 'puts "hello"'
    <ESC> k $ b i
     RORO
    <RETURN>
    set -o emacs
    ```
  1. repeat


# Habitual learning

  1. almost cargo cult


# What are you going to have as second nature?

  1. vi shortcuts
  1. touch typing
  1. problem solving with TDD

# Resources

- [What is Rote learning](https://education.cu-portland.edu/blog/classroom-resources/what-is-rote-learning/)

- presneting slides from vim with [presenting.vim](https://github.com/sotte/presenting.vim)

- read line wrapping - rlwrap
```
brew install rlwrap
```

- display keys typed [KeyCastr](https://github.com/keycastr/keycastr)


# Thank You

  Michael Milewski
  @saramic twitter/github

  Developer at Fresho!

This presentation daily_dojo repo on github
  https://github.com/saramic/daily_dojo


