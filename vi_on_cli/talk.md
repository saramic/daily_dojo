# VI everywhere

  "What's your super power"

  Michael Milewski
  @saramic twitter/github

  Developer at Fresho!


# Fresho!

  - **small** autonomous team
  - pairing / testing
  - daily active users

  - We want
    - full stack, dev ops ➡ frontend
    - any level
    - team fit

    "Come talk to me"


# VI everywhere

  "What's your super power"

  doing a talk is easy, ... right?


# VI everywhere

  "What's your super power"

  doing a talk is easy, ... right?

  1. have an objective
  2. tell a story
  3. MVP and iterate, start early


# VI on the command line

  "still a super power"


# What is VI

  an editor


# Why VI is called VI?

  ex short for EXtended

  ex is a line editor


# VI = VIsual

  shortest unambigous abbreviation


# VIM = Vi IMproved


# How to exit the Vim editor?

  :q


# Demo - what is vi

```sh
vi            # open vi editor
i             # insert mode
              #   enter text
ESC           # normal mode
              #   special commands
h j k l       # ⬅ ⬇ ⬆ ➡
:             # ex mode
/             # search
n             # next match
:s///         # substitute
:q!           # quit without saving
```


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

Default bash option on
the command line


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


# How I started

  puts "hello world"

  hunt and peck typist

  and

    set -o vi


# It was my super power

  * can move around quickly
  * can do edits to whole commands
  * cursor speed ok
  * no need for aliases


# It was my super power


# 1, 2, 3 exercise


# 1, 2, 3 exercise

  - pinned new actions to existing

  rote != higher level thinking

  rote is corner stone of
    higher level thinking

  free up your brain
    to make major leaps
    in leaerning


# Rote learning

  - alphabet
  - numbers
  - ride a bike
  - times tables


# Test

stop yourself from reading the next slide


#

  ruby


#

  beer


# Rote learning

  - language

  rote learnt skills are important
  to engage in higher level thinking


# Second nature as a programmer

  - touch typing
  - keyboard shortcuts
  - language (ruby, JS)
  - technique - TDD


# Rote learning

  1. come up with a drill
    ```
    set -o vi
    ruby -e 'puts "hello"'
    <ESC> k $ b i
     RORO
    <RETURN>
    set -o emacs
    ```
  1. repeat

  PRACTICE, PRACTICE, PRACTICE


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


# What is ReadLine?


# Demo - ruby readline input

```sh
ruby -e '\
require "readline" \
while line = Readline.readline("> ", true) \
  p line \
end'
```

# Demo - python readline input

```{py}
python3 -c '
import readline
while True:
  line = input(":")
  if line == "stop":
    break
  print("%s" % line)'
```

# ReadLine as REPL for various languages

  * irb             # ruby REPL
  * rails console
  * python
  * lein repl       # clojure REPL


# Not all REPL's support ReadLine

  * node
  * iex

  ```sh

    brew install rlwrap

    rlwrap --always-readline node
    rlwrap --always-readline iex

  ```


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


