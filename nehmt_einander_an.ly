\version "2.18.0"
\include "deutsch.ly"

\header {
  composer =  "Jahreslosung  2015 (Römer 15,7)" 
  poet = "Text und Musik: Katharina Neudeck"
  title = \markup{\fontsize #10.1 "Nehmt einander an"}
  %titlex = ""
  broj = ""
}

\include "s02_frbo.ily"

note = \relative c' {
  %\once \override Score.MetronomeMark #'outside-staff-priority = #1 
  %\once \override Score.MetronomeMark.Y-offset = #5.8
  %\once \override Score.MetronomeMark.break-align-symbols = #'(time-signature)
  %\once \override Score.MetronomeMark.self-alignment-X = #-1.05
  %\tempo 4 = 148
  \key a \major
  %\set Score.markFormatter = #format-mark-box-letters
  
  %dio A
  %\once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  %\once \override Score.RehearsalMark.self-alignment-X = #-0.6
  %\once \override Score.RehearsalMark.Y-offset = #4
  \mark \markup {\smaller \box{Refren}}
  r8 cis16 cis e8 a d,2 |
  r8 h16 cis d8. cis16 e2 |
  r8 a,8 cis a' d,2 |
  h8 cis16 d ~ d8. cis16 cis2 |
  r8 cis16 d e8 a d,2 |
  r8 h16 cis d8. cis16 e2 |
  r8 a,8 cis a' d,2 |
  \time 2/4
  \mark \markup { \musicglyph #"scripts.coda" }
  a'8 gis16 fis ~ fis8. gis16 |
  \time 4/4
  a2 ~ a4. \bar "" \break 
  \mark \markup {\smaller \box{Verse}}
  a8 |
  a4 a8 a ~ a gis ~ gis fis |
  e4 fis8 e ~ e cis ~ cis a |
  d4 cis8\( d8\) e4. a,8 ~ |
  a8 e' d cis ~ cis h ~ h a |
  a'4 a8 a ~ a gis ~ gis fis |
  e4 fis8 e ~ e cis ~ cis a |
  d4 cis8\( d8\) e4. a,8 ~ |
  a8 e' d8 cis ~ cis h ~ h4 | \break
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible \once \override Score.RehearsalMark.extra-offset = #'(-1.7 . 0)
 \mark \markup{\small \italic "D.C. al Coda"}
  \bar ":|."
  \time 2/4
  a'8^\markup {\translate #'(-2 . 3.5) \huge \with-color #red \musicglyph #"scripts.coda" } gis16 fis ~ fis8. gis16 |
  \time 4/4
  a1 |
  a4. cis8 fis,4. gis8 |
  a1 |
  \bar "|."

  %\once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
  %\once \override Score.RehearsalMark.self-alignment-X = #0
  %\once \override Score.RehearsalMark.Y-offset = #0.4
  %\mark \default
 
  
  
}

akordi = \chordmode {
  \set chordChanges = ##t
  a2 h:m7 | e2:7 cis2:m |
  fis2:m h2:m | e2 a2 |
  a2/cis h2:m7 | e2:7 cis2:m | fis2:m  h2:m |
  e2 | a1 |
  d2 e/d | cis2:m fis:m | h:m a/fis | d e |
  fis2:m fis:m/e | d a/cis | h:m a/cis | d e |
  e2 | fis2:m fis2:m/e | h:m e | a1 |
  
}

kiticaA = \lyricmode {
    \set stanza = #"1. "
  %\skip4 \skip4
Ge -- mein -- sam fei -- ern, ge -- mein -- sam la -- chen,
Ge -- mein -- sam den an -- dern glück -- lich ma -- chen.
Ge -- mein -- sam trau -- ern, ge -- mein -- sam wei -- nen,
Ge -- mein -- sam die gro -- ßen Hür -- den mei -- stern!

}

ref = \lyricmode {
Nehmt ein -- an -- der an, so -- wie Chris -- tus euch,
zu Go -- ttes Lob, wie er es __ ge -- bot.
Nehmt ein -- an -- der an, so -- wie Chris -- tus euch,
zu Go -- ttes Lob, wie er es ge -- bot. __
}

kiticaB = \lyricmode {
  \set stanza = #"2. "
Ge -- mein -- sam un -- se -- re Schuld be -- ke -- nnen,
ge -- mein -- sam __ _ sie beim Na -- men ne -- nnen.
Ge -- mein -- sam un -- se -- ren Herrn be -- zeu -- gen
Ge -- mein -- sam __ _ uns vor ihm ver -- beu -- gen.
}

codax = \lyricmode {
  %\set stanza = #"3. "
  %\skip4 \skip4
wie er es ge -- bot, __
wie er es ge -- bot. __
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \ref \kiticaA \codax }
    \addlyrics {\repeat unfold 38 { _ } \kiticaB }
  >>
  %	\midi {}
}

%\markup {
%  \vspace #2
%  \smaller \italic Leadsheet: \hspace #2
%  \huge {
%    \rounded-box {
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny {intro [4]} }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny {kitica 1.} }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic refren } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 3 \italic \teeny {kitica 2.} }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic refren } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 4 \italic \teeny coda }
      %\line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic chorus \bold \tiny \italic ×2  } }
      %\line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic chorus } }
    %  \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic {outro [8]} }
    %}
 % }
%}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97, 2.18.0
%}


%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}
