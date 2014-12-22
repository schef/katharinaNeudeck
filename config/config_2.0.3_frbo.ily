\version "2.17.95"
%%%%%%%%%%%%
%% CONFIG %%-------------------------------------------------------------------------
%%%%%%%%%%%%

%#(set-default-paper-size "a4")	%format papira

myStaffSize = #22
#(set-global-staff-size myStaffSize)
\paper {
  #(define fonts (make-pango-font-tree "JohnSans Text Pro" "Lilypond JohnSans White Pro" "Lilypond JohnSans Medium Pro" (/ myStaffSize 22)))
  markup-system-spacing #'padding = #7
  %system-system-spacing #'padding = #10
  indent = 0
  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 12\mm
  %paper-width = 138 \mm
  %paper-height = 214 \mm
  top-markup-spacing #'padding = #0
  markup-system-spacing #'padding = #5
  markup-system-spacing #'stretchability = #5
  score-system-spacing #'padding = #5
  %last-bottom-spacing #'padding = #5
  score-markup-spacing #'padding = #5
  top-system-spacing #'padding = #5

  markup-markup-spacing #'padding = #1
  %markup-markup-spacing #'stretchability = #0
  %markup-markup-spacing #'minimum-distance = #0
  %markup-markup-spacing #'basic-distance = #0

  system-system-spacing #'padding = #2
  %system-system-spacing #'minimum-distance = #1
  system-system-spacing #'stretchability = #0
  score-system-spacing #'stretchability = #5
  print-page-number = ##f
  last-bottom-spacing #'minimum-distance =#0
  score-markup-spacing #'stretchability = #0

  %first-page-number = #16
  %print-first-page-number = ##t
  %auto-first-page-number = ##t
  %ragged-last-bottom=##t
  %annotate-spacing = ##t

  %oddHeaderMarkup = \markup { \override #'(font-name . "JohnSans Medium Pro") \abs-fontsize #16 \brojPjesme }
  %oddFooterMarkup = \markup { \fill-line { \center-column { \override #'(font-name . "JohnSans White Pro") \abs-fontsize #6 \copyright \override #'(font-name . "JohnSans Medium Pro") \brojStraniceLijevo}}}
  %evenFooterMarkup = \markup {\fill-line { \override #'(font-name . "JohnSans Medium Pro") \brojStraniceDesno }}

  %size A4 which is 210 × 297 mm
  %  left-margin = 20 \mm %10mm
  line-width = 170 \mm %paper-width - 20mm
  bottom-margin = 12 \mm
  oddHeaderMarkup = \markup \teeny \on-the-fly #not-first-page {
    \vspace #2
    \fill-line {
      \on-the-fly #not-part-first-page {
        \italic \fromproperty #'header:title
        \fromproperty #'header:composer
      }
      %\fromproperty #'page:page-number-string
    }
  }
  evenHeaderMarkup = \markup \teeny \on-the-fly #not-first-page {
    \vspace #2
    \fill-line {
      \on-the-fly #not-part-first-page {
        \override #'(font-name . "JohnSans White Pro Italic") \fromproperty #'header:title
        \override #'(font-name . "JohnSans White Pro") \fromproperty #'header:composer
      }
      %\fromproperty #'page:page-number-string
    }
  }

  %  oddFooterMarkup = \markup {
  %    \on-the-fly #part-last-page \teeny \italic
  %    \fill-line {
  %      \tagline \concat { \AcquisitionDate \hspace #1 \Revision \hspace #1 \Formerly }
  %    }
  %  }
  %  evenFooterMarkup = \markup {
  %   \on-the-fly #part-last-page \teeny \italic
  %    \fill-line {
  %      \tagline \concat { \AcquisitionDate \hspace #1 \Revision \hspace #1 \Formerly }
  %    }
  %  }
}


%%%%%%%%%%%%%%%%
%% STAFF SIZE %% --------------------------------------------------------------------
%%%%%%%%%%%%%%%%

%myStaffSize = #24
%#(set-global-staff-size myStaffSize)
%#(set-default-paper-size "a4")	%format papira

%%%%%%%%%%%%%%%%%%%%%%%%%
%% USER DEF. FUNCTIONS %%------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%

%BREATHEMOJ
\layout {
  \context {
    \Voice
    %\override BreathingSign.font-name = #"Helvetica"			%font za zarez
    \override BreathingSign.font-size = #8				%velicina fonta za zarez
    \override BreathingSign.text = \markup { \raise #0.2 "," }	%stavi zarez
    %\override BreathingSign.color = #blue				%boja zareza
    \override BreathingSign.color = #(rgb-color 1 0 0)
  }

  \context {
    \Score markFormatter = #format-mark-box-numbers			%box oko broja
    %\Score markFormatter = #format-mark-circle-numbers			%krug oko broja
    \override RehearsalMark.self-alignment-X = #CENTER		%pozicija broja na zarez
    %\override RehearsalMark.color = #blue				%boja rehearsal marka
    \override RehearsalMark.color = #(rgb-color 1 0 0)
  }
}

breathemoj = {
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  %\override Score.RehearsalMark.extra-spacing-height = #'(-inf.0 . +inf.0) 
  %\once \override Score.RehearsalMark.X-offset = #0.05
  %\once \override Score.RehearsalMark.Y-offset = #-1.5
  %\once \override Score.RehearsalMark.outside-staff-priority = #1
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\override Score.RehearsalMark.break-align-symbols = #'(breathing-sign)
  %\mark \default
  %\breathe
  \noBreak
  \once \override Score.RehearsalMark.Y-offset = #0.1
  %\once \override Staff.BarLine #'extra-spacing-width = #'(-5 . 3)
  \once \override Staff.BarLine #'extra-spacing-width = #'(-2 . 3)
  \once \override Staff.BarLine #'color = #red
  \once \override Staff.BarLine.bar-extent = #'(1.5 . 2.5)
  \bar "|"
  \mark \default
}

%LEFT
left = { \once \override LyricText.X-offset = #-2.8 }                 % \left "S to" -- bom                                                                                           %snipet 737

%MARK DEFAULT I LYRICS FONT SIZE
\layout { 
  \context {
    \Score markFormatter = #format-mark-box-numbers
    %\Score markFormatter = #format-mark-circle-numbers
    \override RehearsalMark.self-alignment-X = #CENTER
    %\override RehearsalMark.color = #blue
    \override RehearsalMark.color = #(rgb-color 1 0 0)
    %\override StaffSymbol.thickness = #0.5
    %\override Stem.thickness = #2.5
    %\override Stem.thickness = #10
    %\override StaffSymbol.ledger-line-thickness = #'(0.2 . 0.2)
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #0
    \override LyricText.font-name = "JohnSans White Pro"
  } 
}

%%%%%%%%%%%%
%% HEADER %% ------------------------------------------------------------------------
%%%%%%%%%%%%

\header {
  copyright = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Creative Commons Attribution-ShareAlike 4.0 } }
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { \simple #(strftime "%d/%m/%Y" (localtime (current-time)))
  %                                                                                                  \with-url #"http://lilypond.org/web/" { LilyPond \simple #(lilypond-version)
  %                                                                                                                                          (http://lilypond.org/) } } }
  tagline = ""
}
