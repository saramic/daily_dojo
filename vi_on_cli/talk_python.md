# Python readline intro

- we are mostly programmers here? right?
- so last christmas I was playing board games with the kids
- we started to play cluedo
- I came up with a heruistinc that helped me win
- so I decided to write a game
- how does cluedo work? a character has committed a murder with an object in a
  mansion. The who, with what and where are hidden in an envelope and you go
  around acusing various people and gaining clues from the other players until
  you are confident of who, with what, where
- but enough of cluedo, let's write a simple program to take in the input

```python
python3 -c '
import readline
while True:
  line = input("guess: ")
  if line == "stop":
    break
  print("%s" % line)'
```

- now we can guess
  - Miss Scarlet, Professor Plum, Mrs Peacock, Reverend Green, Colonel Mustard,
    Mrs White
  - candlestick, dagger, lead pipe, revolver, rope, spanner
  - kitchen, ballroom, conservatory, dining room, cellar, billiard room,
    library, lounge, hall, study
  > It was Miss Scarlet with the dagger in the lounge
- and Agile! fail fast and fail early, no one want's this user interface!
- but hang on - KeyCastr ON
- esc-enter esc-enter
- 2w - jump 2 words
- c2w - change 2 words
- Reverend Green
- enter
- BOOM - wow
- KeyCastr OFF

# VI everywhere

  "What's your super power"

  Michael Milewski
  @saramic twitter/github
  https://failure-driven.com

  Developer at Fresho!

# VI via readline

  more like it

- so what was there VI'ish in the code example?
- ^ beginning of line - just like a regex
- $ end of line - just like a regex
- c2w change 2 words
- u to undo
- these are VI shortcuts

# What is VI

  an editor


# Why VI is called VI?

  ex short for EXtended

  ex is a line editor


# VI = VIsual

  shortest unambigous abbreviation


# VIM = Vi IMproved


# How to exit the Vim editor?

  :q    # quit vi
  :wq   # write file and quit
  :q!   # quit vi not save
  :x    # write and quit

# Demo - what is vi

```sh
vi            # open vi editor
i             # insert mode
              #   enter text
ESC           # normal mode
              #   special commands
h j k l       # ⬅ ⬇ ⬆ ➡
:             # ex mode - command mode
/             # search
n             # next match
:s///         # substitute
:q!           # quit without saving
```

# So far

Vi where thre is readline
Vi in the editor
what about everywhere?

- go back to program example and edit it

# Vi on the command line

so now we have vi on the command line
what if I want to try?

# Demo - vi on command line

```sh
set -o vi
ESC             # normal mode
/               # search
cw              # change word
u  .            # undo and redo
^  $            # beginning and end
w  W            # word and whitespace word
b  B            # back a word
y               # yank (copy) to end
p               # paste
ct<char>        # cut to character
```

# get me out of here

```sh

set -o emacs    # get me out of here

```

# Emacs

```sh
set -o | egrep 'vi |emacs'

emacs          	on
vi             	off
```

emacs shortcuts
```sh
CTRL A        # beginning of line
CTRL E        # end of line
CTRL R        # reverse search
```

# But where is the super power?

why learn - https://news.ycombinator.com/item?id=18445240
https://anaulin.org/blog/things-nobody-told-me-about-being-a-software-engineer/
speed - https://medium.com/@naveennegi/how-i-doubled-my-productivity-as-a-software-developer-876109ce72e2

# hey how do I learn it?
why mechanically confident is ok
https://www.youtube.com/watch?v=Btsx9YzhJVM


# Rote learning

  1. come up with a drill
    ```
    set -o vi
    python -c 'print("hello")'
    <ESC> k $ b i
     Python
    <RETURN>
    set -o emacs
    ```
  1. repeat

  PRACTICE, PRACTICE, PRACTICE

where else all the places
questions? - rlwrap

# so readline and command line the label ssaid everywhere!

story about mashing keyboard during sql session

how about console for python framework

# Postgresql database

  ```sh

    psql

    cat >> ~/.inputrc
    set editing-mode vi

  ```


# Mysql database

  ```sh

    mysql

    cat >> ~/.editrc
    bind -v

  ```

# Vi anywhere there is ReadLine

  Vi on the command line
    and anywhere there is ReadLine

# what about the super power?

# It was my super power

  * can move around quickly
  * can do edits to whole commands
  * cursor speed ok
  * no need for aliases

# Vi is my second nature

often find myself mashing the ESC key

  ESC       # to get into normal mode

  ESC k     # to look at the last command


# DB console

* or mash the keyboard

<ESC> <ENTER> x 2

```sql

SELECT * FROM users
  JOIN roles users.role_id = role.id
  WHERE role.name = 'admin';

```

# Vi anywhere there is ReadLine

  Vi on the command line
    and anywhere there is ReadLine



# What is ReadLine?


# Demo - ruby readline input

```sh
ruby -e '\
require "readline" \
while line = Readline.readline("> ", true) \
  p line \
end'
```


# ReadLine as REPL for various languages

  * irb             # ruby REPL
  * rails console
  * python
  * lein repl       # clojure REPL




# Time for a super power example?

  House price comparison
  between 2 suburbs in Melbourne


# Your super power?

  * vi shortcuts
  * touch typing
  * problem solving with TDD

  PRACTICE, PRACTICE, PRACTICE


# Thank You

  Michael Milewski
  @saramic twitter/github

  Developer at Fresho!

This presentation daily_dojo repo on github
  https://github.com/saramic/daily_dojo


# EARLY EXIT


# house price comparison

* [docs](http://webtools.realestate.com.au/configuring-widgets-included-via-javascript/)
* query for house in richmond
```
QUERY='\{"channel":"buy","localities":\[\{"locality":"Richmond","subdivision":"VIC","postcode":"3121"\}\],"filters":\{"propertyTypes":\["house"\]\}\}'
```
* run query
```
curl "http://services.realestate.com.au/services/listings/search?query=$QUERY"
```

# house price comparison

```
cat richmond.json | jq
  | jq 'keys'
  | jq '.tieredResults[] | keys'
  | jq '.tieredResults[].results | keys'
  | jq '.tieredResults[].results[] | [.title, .price]'

cat richmond.json |
  jq '.tieredResults[].results[].price.display'
```


# house price comparison

```
cat northcote.json | jq '.tieredResults[].results[].price.display' | ruby -e 'prices = ARGF.read.split("\n").map{|price| price[/\$([\d,m\.]+)/, 1] }.compact.map{|price| price.gsub(/,/, "") }.map{|price| (price =~ /m/) ? (price.to_f * 1_000_000) : price}.map(&:to_i) ; p prices; p prices.sum/prices.count'
```


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


# Resources

- [What is Rote learning](https://education.cu-portland.edu/blog/classroom-resources/what-is-rote-learning/)

- presneting slides from vim with [presenting.vim](https://github.com/sotte/presenting.vim)

- read line wrapping - rlwrap
```
brew install rlwrap
```

- display keys typed [KeyCastr](https://github.com/keycastr/keycastr)


# Your super power?

  * vi shortcuts
  * touch typing
  * problem solving with TDD


# Thank You

  Michael Milewski
  @saramic twitter/github

  Developer at Fresho!

This presentation daily_dojo repo on github
  https://github.com/saramic/daily_dojo

# Questions?

# where do you wish there was VI bindings?
 - everywhere
 - have tried on iphone - not too cool -no esc key
 - in browser but not everyone has it and fails in some edit boxes, not in dev toools
 - in IDE but fails on git commit message editing

# what if there is no readline?

# Not all REPL's support ReadLine

  * node
  * iex

  ```sh

    brew install rlwrap

    rlwrap --always-readline node
    rlwrap --always-readline iex

  ```
