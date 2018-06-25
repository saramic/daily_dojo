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


# Diversity


# Rote learning

  - alphabet
  - numbers
  - ride a bike
  - times tables
  - knitting

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


# Where do we start?

  puts "hello world"


# Where did I start?

  - slackware linux install
  - 25 floppy disks
  - hunt and peck typing 


# Where did I start?

  - slackware linux install
  - 25 floppy disks
  - hunt and peck typing 

  - but I had vi
    - that was my super power


# Why VI is called VI?

  ex = line editor


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
:q!           # quit without saving
```


# Shortcuts on the command line

```sh
⬆             # previous command
⬇             # next command
CTRL A        # beginning of line
CTRL E        # end of line
CTRL B        # back a word
CTRL F        # forward a word
CTRL R        # reverse search
```

# Emacs

Default bash option on
the command line

```sh
set -o | egrep 'vi |emacs'

emacs          	on
vi             	off
```

# Vi - on the command line

```sh
set -o vi

set -o | egrep 'vi |emacs'
emacs          	off
vi             	on
```


# demo - vi on command line

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

set -o emacs    # get me out of here
```


# 1, 2, 3 example


# 1, 2, 3 example

  - pinned new actions to existing

  rote != higher level thinking

  rote is corner stone of
    higher level thinking

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


# Hey you said VI everywhere!

  - [  ] main editor


# Hey you said VI everywhere!

  - [❌] main editor


# Hey you said VI everywhere!

  - [❌] main editor
  - [  ] browser extension (vimium)


# Hey you said VI everywhere!

  - [❌] main editor
  - [❌] browser extension (vimium)


# Hey you said VI everywhere!

  - [❌] main editor
  - [❌] browser extension (vimium)
  - [  ] slide (presenting.vim)

# Hey you said VI everywhere!

  - [❌] main editor
  - [❌] browser extension (vimium)
  - [❌] slide (presenting.vim)


# Hey you said VI everywhere!

  - [❌] main editor
  - [❌] browser extension (vimium)
  - [❌] slide (presenting.vim)
  - [  ] anywhere there is readline!


# Hey you said VI everywhere!

  - [❌] main editor
  - [❌] browser extension (vimium)
  - [❌] slide (presenting.vim)
  - [👍] anywhere there is readline!


# Ruby program input

```sh
ruby -e '\
require "readline" \
while line = Readline.readline("> ", true) \
  p line \
end'
```


# vi on command line

  * iterative exploration
      * find some data
      * process it
      * process it some more
      * print a result
  * laggy connections


# REPL for various languages

  * irb             # ruby REPL
  * rails console
  * python
  * lein repl       # clojure REPL


# Not all REPL support ReadLine

  * node
  * iex

  ```sh

    brew install rlwrap

    rlwrap --always-readline node
    rlwrap --always-readline iex

  ```


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

* or mash the keyboard

<ESC> <ENTER> x 2


# Iterative exploration example

  House price comparison
  between 2 suburbs in Melbourne

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


