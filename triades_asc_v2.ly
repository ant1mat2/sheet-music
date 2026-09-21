\version "2.20.0"

\header {
  title = "Triades ascendantes (Conduite de Voix Diatonique)"
  subtitle = " "
  instrument = ""
  tagline = ##f
}

% --- Accords lettrés standards ---
harmonies = \chordmode {
  % Groupe 1 : Cordes 6-5-4 
  d1:m/f | b1:dim/f | g1 | e1:m/g | c1/g |
  a1:m | f1/a | d1:m/a | b1:dim | g1/b |
  e1:m/b | c1 | a1:m/c | f1/c | d1:m |
  b1:dim/d | g1/d | e1:m | e2:m 
  
  % Groupe 2 : Cordes 5-4-3 
  e2:m |
  c1/e | a1:m/e | f1/a | d1:m/f | b1:dim/f |
  g1/b | e1:m/b | c1 | a1:m/c | f1/c |
  d1:m/a | b1:dim | g2/b  g2/b |
  
  % Groupe 3 : Cordes 4-3-2 
  e1:m/b | c1 | a1:m/c | f1/c | d1:m |
  b1:dim/d | g1/d | e2:m 
  
  % Groupe 4 : Cordes 3-2-1 
  e2:m |
  c1/e | a1:m/e | f1/a | d1:m/f | b1:dim/f |
  g1/b | e1:m/g | c1/g
}

% --- Analyse en chiffres romains et renversements ---
romanNumerals = \lyricmode {
  % Groupe 1 : Cordes 6-5-4
  "ii⁶"1 "vii°⁶₄"1 "V"1 "iii⁶"1 "I⁶₄"1
  "vi"1 "IV⁶"1 "ii⁶₄"1 "vii°"1 "V⁶"1 
  "iii⁶₄"1 "I"1 "vi⁶"1 "IV⁶₄"1 "ii"1
  "vii°⁶"1 "V⁶₄"1 "iii"1 "iii"2 
  
  % Groupe 2 : Cordes 5-4-3
  "iii"2 "I⁶"1 "vi⁶₄"1 "IV⁶"1 "ii⁶"1 "vii°⁶₄"1
  "V⁶"1 "iii⁶₄"1 "I"1 "vi⁶"1 "IV⁶₄"1
  "ii⁶₄"1 "vii°"1 "V⁶"2 ""2 
  
  % Groupe 3 : Cordes 4-3-2
  "iii⁶₄"1 "I"1 "vi⁶"1 "IV⁶₄"1 "ii"1
  "vii°⁶"1 "V⁶₄"1 "iii"2 ""2 
  
  % Groupe 4 : Cordes 3-2-1
  "I⁶"1 "vi⁶₄"1 "IV"1 "ii⁶"1 "vii°⁶₄"1
  "V"1 "iii⁶"1 "I⁶₄"1
}

theNotes = {
  \clef "treble_8"
  \key c \major
  \time 4/4

  % --- 1. CORDES 6-5-4 ---
  <f,\6 a,\5 d\4>1 |   % m.1: Dm/F (1-0-0)
  <f,\6 b,\5 d\4>1 |   % m.2: Bdim/F (1-2-0)
  <g,\6 b,\5 d\4>1 |   % m.3: G (3-2-0)
  <g,\6 b,\5 e\4>1 |   % m.4: Em/G (3-2-2)
  <g,\6 c\5 e\4>1 |    % m.5: C/G (3-3-2)
  \break

  <a,\6 c\5 e\4>1 |    % m.6: Am (5-3-2)
  <a,\6 c\5 f\4>1 |    % m.7: F/A (5-3-3)
  <a,\6 d\5 f\4>1 |    % m.8: Dm/A (5-5-3)
  <b,\6 d\5 f\4>1 |    % m.9: Bdim (7-5-3)
  <b,\6 d\5 g\4>1 |    % m.10: G/B (7-5-5)
  \break

  <b,\6 e\5 g\4>1 |    % m.11: Em/B (7-7-5) --> LE VOICI !
  <c\6 e\5 g\4>1 |     % m.12: C (8-7-5)
  <c\6 e\5 a\4>1 |     % m.13: Am/C (8-7-7)
  <c\6 f\5 a\4>1 |     % m.14: F/C (8-8-7)
  <d\6 f\5 a\4>1 |     % m.15: Dm (10-8-7)
  \break

  <d\6 f\5 b\4>1 |     % m.16: Bdim/D (10-8-9)
  <d\6 g\5 b\4>1 |     % m.17: G/D (10-10-9)
    <e\6 g\5 b\4>2       % m.19: Pivot Em (12-10-9)
  <e\5 g\4 b\3>2 |     %       -> Em sur 5-4-3 (7-5-4)
  \break

  % --- 2. CORDES 5-4-3 ---
  <e\5 g\4 c'\3>1 |    % m.20: C/E (7-5-5)
  <e\5 a\4 c'\3>1 |    % m.21: Am/E (7-7-5)
  <f\5 a\4 c'\3>1 |    % m.22: F/A (8-7-5)
  <f\5 a\4 d'\3>1 |    % m.23: Dm/F (8-7-7)
  <f\5 b\4 d'\3>1 |    % m.24: Bdim/F (8-9-7)
  \break

  <g\5 b\4 d'\3>1 |    % m.25: G/B (10-9-7)
  <g\5 b\4 e'\3>1 |    % m.26: Em/B (10-9-9)
  <g\5 c'\4 e'\3>1 |   % m.27: C (10-10-9)
  <a\5 c'\4 e'\3>1 |   % m.28: Am/C (12-10-9)
  <a\5 c'\4 f'\3>1 |   % m.29: F/C (12-10-10)
  \break

  <a\5 d'\4 f'\3>1 |   % m.30: Dm/A (12-12-10)
  <b\5 d'\4 f'\3>1 |   % m.31: Bdim (14-12-10)
  <b\5 d'\4 g'\3>1 |   % m.32: G/B (14-12-12)
  <b\5 d'\4 g'\3>2     % m.33: Pivot G/B (14-12-12)
  <b\4 d'\3 g'\2>2 |   %       -> G/B sur 4-3-2 (9-7-8)
  \break

  % --- 3. CORDES 4-3-2 ---
  <b\4 e'\3 g'\2>1 |   % m.34: Em/B (9-9-8)
  <c'\4 e'\3 g'\2>1 |  % m.35: C (10-9-8)
  <c'\4 e'\3 a'\2>1 |  % m.36: Am/C (10-9-10)
  <c'\4 f'\3 a'\2>1 |  % m.37: F/C (10-10-10)
  <d'\4 f'\3 a'\2>1 |  % m.38: Dm (12-10-10)
  \break

  <d'\4 f'\3 b'\2>1 |  % m.39: Bdim/D (12-10-12)
  <d'\4 g'\3 b'\2>1 |  % m.40: G/D (12-12-12)
  <e'\4 g'\3 b'\2>2    % m.42: Pivot Em (14-12-12)
  <e'\3 g'\2 b'\1>2 |  %       -> Em sur 3-2-1 (9-8-7)
  \break

  % --- 4. CORDES 3-2-1 ---
  <e'\3 g'\2 c''\1>1 | % m.43: C/E (9-8-8)
  <e'\3 a'\2 c''\1>1 | % m.44: Am/E (9-10-8)
  <f'\3 a'\2 c''\1>1 | % m.45: F/A (10-10-8)
  <f'\3 a'\2 d''\1>1 | % m.46: Dm/F (10-10-10)
  <f'\3 b'\2 d''\1>1 | % m.47: Bdim/F (10-12-10)
  \break

  <g'\3 b'\2 d''\1>1 | % m.48: G/B (12-12-10)
  <g'\3 b'\2 e''\1>1 | % m.49: Em/G (12-12-12)
  <g'\3 c''\2 e''\1>1 \bar "|." % m.50: C/G (12-13-12)
}

\score {
  <<
    \new ChordNames {
      \harmonies
    }
    \new Staff = "GuitarePortee" {
      \new Voice = "melodie" {
        \theNotes
      }
    }
    \new Lyrics \lyricsto "melodie" {
      \override LyricText.font-series = #'bold
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
