# Music timing

## Problem statement

given a bar of notes and not notes
```
[1,0,1,0]
```
translate into the note type and the beat it is played on
```
1     2 3     4
minim   minim
```
do this for each of the notes
- semibreve
- minim
- crotchet
- quaver
- semiquaver

```
[1,0,0,0]
1         2 3 4
semibreve

[1,0,1,0]
1     2 3     4
minim   minim

[1,1,1,1]
1        2        3        4
crotchet crotchet crotchet crotchet

[1,1,0,1]
1        2     3 4
crotchet minim   crotchet
```

then expand it to different instruments

```
{
  sax: [1,0,1,0],
  tpt: [1,1,1,1],
}

1            2            3            4
sax-minim                 sax-minim
tpt-crotchet tpt-crotchet tpt-crotchet tpt-crotchet
```

expand it to the duration of the bar

```
1                 2                 3                 4
0.50:sax-minim                      0.50:sax-minim
0.25:tpt-crotchet 0.25:tpt-crotchet 0.25:tpt-crotchet 0.25:tpt-crotchet
```

exapnd to different time signatures 2/4 3/4 4/4 6/8 5/4

