\version "2.20.0"

\header {
  title = "Triades descendante (conduite de voix diatonique)"
  subtitle = " "
  instrument = " "
  tagline = ##f
}

% --- Accords lettrés standards ---
harmonies = \chordmode {
  % 1. Cordes 3-2-1
  c1/g | e1:m/g | g1 | b1:dim/f | d1:m/f |
  f1 | a1:m/e | c1/e | e1:m |
  g1/d | b1:dim/d | d1:m | f1/c | a1:m/c |
  c1 | e1:m/b | g1/b | b1:dim | d1:m/a |
  f1/a | a1 | c1/g |e1:m/g |

  % 2. Cordes 4-3-2
  g1 | b1:dim/f | d1:m/f | f1 |
  a1:m/e | c1/e | e1:m | g1/d |

  % 3. Cordes 5-4-3
  b1:dim/d | d1:m | f1/c | a1:m/c |
  c1 | e1:m/b | g1/b |

  % 4. Cordes 6-5-4
  b1:dim | d1:m/a | f1/a | a1:m/e |
  c1/e | e1:m/b | g1/b | b1:dim/f | d1:m/f | b1:dim/f |c1
}

% --- Analyse en chiffres romains et renversements ---
romanNumerals = \lyricmode {
  % 1. Cordes 3-2-1
  "I⁶₄"1 "iii⁶"1 "V"1 "vii°⁶₄"1 "ii⁶"1
  "IV"1 "vi⁶₄"1 "I⁶"1 "iii"1
  "V⁶₄"1 "vii°⁶"1 "ii"1 "IV⁶₄"1 "vi⁶"1
  "I"1 "iii⁶₄"1 "V⁶"1 "vii°"1 "ii⁶₄"1 "IV⁶"1 "vi"1 "I⁶₄"1 "iii⁶"1

  % 2. Cordes 4-3-2
  "" "V"1 "vii°⁶₄"1 "ii⁶"1 "IV"1
  "vi⁶₄"1 "I⁶"1 "iii"1 "V⁶₄"1 ""1

  % 3. Cordes 5-4-3
  "vii°⁶"1 "ii"1 "IV⁶₄"1 "vi⁶"1
  "I"1 "iii⁶₄"1 "V⁶"1

  % 4. Cordes 6-5-4
  "V⁶"1 "vii°"1 "ii⁶₄"1 "IV⁶"1 "vi⁶₄"1
  "I⁶"1 "iii⁶₄"1 "V"1 "vii°⁶₄"1 "ii⁶"1 "vii°⁶₄"1 "I⁶₄"1
}

theNotes = {
  \clef "treble_8"
  \key c \major
  \time 4/4

  % --- 1. CORDES 3-2-1 (du C case 12 au Em à vide 0-0-0) ---
  <g'\3 c''\2 e''\1>1 |
  <g'\3 b'\2 e''\1>1 |
  <g'\3 b'\2 d''\1>1 |
  <f'\3 b'\2 d''\1>1 |
  <f'\3 a'\2 d''\1>1 |
  \break

  <f'\3 a'\2 c''\1>1 |
  <e'\3 a'\2 c''\1>1 |
  <e'\3 g'\2 c''\1>1 |
  <e'\3 g'\2 b'\1>1 |
   <d'\3 g'\2 b'\1>1 |
  \break

 
  <d'\3 f'\2 b'\1>1 |
  <d'\3 f'\2 a'\1>1 |
  <c'\3 f'\2 a'\1>1 |
  <c'\3 e'\2 a'\1>1 |
    <c'\3 e'\2 g'\1>1 |
  \break


  <b\3 e'\2 g'\1>1 |
  <b\3 d'\2 g'\1>1 |
   <b\3 d'\2 f'\1>1 |
<a\3 d'\2 f'\1>1 |
<a\3 c'\2 f'\1>1 |
\break
<a\3 c'\2 e'\1>1 |
<g\3 c'\2 e'\1>1 |
  <g\3 b\2 e'\1>2  % Em (0-0-0)
  <g\4 b\3 e'\2>2 |   % Em (5-4-5)
  \break

  % --- 2. CORDES 4-3-2 (Reprise Em 5-4-5 jusqu'à G à vide 0-0-0) ---
  <g\4 b\3 d'\2>1 |
  <f\4 b\3 d'\2>1 |
  <f\4 a\3 d'\2>1 |
  <f\4 a\3 c'\2>1 |
  <e\4 a\3 c'\2>1 |
  \break

    <e\4 g\3 c'\2>1 |
  <e\4 g\3 b\2>1 |
  <d\4 g\3 b\2>2   % G (0-0-0)
   <d\5 g\4 b\3>2 |   % G (5-5-4)
  \break

  % --- 3. CORDES 5-4-3 (Reprise G 5-5-4 jusqu'à G/B 2-0-0) ---
 
  <d\5 f\4 b\3>1 |
  <d\5 f\4 a\3>1 |
  <c\5 f\4 a\3>1 |
  <c\5 e\4 a\3>1 |
  
  \break
  <c\5 e\4 g\3>1 |
  <b,\5 e\4 g\3>1 |
  <b,\5 d\4 g\3>2 <b,\6 d\5 g\4>2 |  % G/B (7-5-5)  % G/B (2-0-0)
  \break

  % --- 4. CORDES 6-5-4 (Reprise G/B 7-5-5 jusqu'à C 3-3-2) ---
    <b,\6 d\5 f\4>1 |
  <a,\6 d\5 f\4>1 |
  <a,\6 c\5 f\4>1 |
  <a,\6 c\5 e\4>1 |
    \break
    <g,\6 c\5 e\4>1 |
  <g,\6 b,\5 e\4>1 |
  <g,\6 b,\5 d\4>1 |
  <f,\6 b,\5 d\4>1 |
  \break
  <f,\6 a,\5 d\4>1 |
  <f,\6 b,\5 d\4>1 |
  <g,\6 c\5 e\4>1 \bar "|." % C (3-3-2-x-x-x)
}

\score {
  <<
    \new ChordNames {
      \harmonies
    }
    \new Staff = "PorteeGuitare" {
      \new Voice = "melodie" {
        \theNotes
      }
    }
    \new Lyrics \lyricsto "melodie" {
      
      \romanNumerals
    }
    \new TabStaff = "TablatureGuitare" \with {
      stringTunings = #guitar-tuning
    } {
      \theNotes
    }
  >>
  \layout {
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/2)
    }
  }
}