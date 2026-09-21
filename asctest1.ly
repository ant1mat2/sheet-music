\version "2.20.0"

\header {
  title = "Étude Intégrale de Conduite de Voix Diatonique (Ascendante)"
  subtitle = "Cycle complet note à note du Dm/F (1-0-0-x-x-x) au C aigu (x-x-x-12-13-12)"
  instrument = "Guitare"
  tagline = ##f
}

% --- Accords lettrés standards ---
harmonies = \chordmode {
  % Groupe 1 : Cordes 6-5-4
  d1:m/f | b1:dim/f | g1 | e1:m/g | c1/g |
  a1:m | f1/a | d1:m/a | b1:dim | g1/b | e1:m/b |
  c1 | a1:m/c | f1/c | d1:m | b1:dim/d |
  g1/d | e2:m e2:m |

  % Groupe 2 : Cordes 5-4-3
  c1/e | a1:m/e | f1/a | d1:m/f |
  b1:dim/f | g1/b | e1:m/b | c1/g | a1:m |
  f1/a | d1:m/a | b1:dim | g1/b | c2/g c2/g |

  % Groupe 3 : Cordes 4-3-2
  a1:m/c | f1/c | d1:m | b1:dim/d |
  g1/d | e1:m | c1/e | a1:m/e | f1/a |
  d1:m/f | b1:dim/f | g1/b | e1:m/b | c2 c2 |

  % Groupe 4 : Cordes 3-2-1
  a1:m/c | f1/c | d1:m | b1:dim/d |
  g1/d | e1:m | c1/e | a1:m/e | f1/a |
  d1:m/f | b1:dim/f | g1/b | e1:m/g | c1/g
}

% --- Analyse en chiffres romains et renversements ---
romanNumerals = \lyricmode {
  % Groupe 1 : Cordes 6-5-4
  "ii⁶"1 "vii°⁶₄"1 "V"1 "iii⁶"1 "I⁶₄"1
  "vi"1 "IV⁶"1 "ii⁶₄"1 "vii°"1 "V⁶"1 "iii⁶₄"1
  "I"1 "vi⁶"1 "IV⁶₄"1 "ii"1 "vii°⁶"1
  "V⁶₄"1 "iii"2 ""2

  % Groupe 2 : Cordes 5-4-3
  "I⁶"1 "vi⁶₄"1 "IV"1 "ii⁶"1
  "vii°⁶₄"1 "V"1 "iii⁶₄"1 "I⁶"1 "vi"1
  "IV⁶"1 "ii⁶₄"1 "vii°"1 "V⁶"1 "I⁶₄"2 ""2

  % Groupe 3 : Cordes 4-3-2
  "vi⁶"1 "IV⁶₄"1 "ii"1 "vii°⁶"1
  "V⁶₄"1 "iii"1 "I⁶"1 "vi⁶₄"1 "IV⁶"1
  "ii⁶"1 "vii°⁶₄"1 "V⁶"1 "iii⁶₄"1 "I"2 "I"2

  % Groupe 4 : Cordes 3-2-1
  "vi⁶"1 "IV⁶₄"1 "ii"1 "vii°⁶"1
  "V⁶₄"1 "iii"1 "I⁶"1 "vi⁶₄"1 "IV⁶"1
  "ii⁶"1 "vii°⁶₄"1 "V⁶"1 "iii⁶"1 "I⁶₄"1
}

theNotes = {
  \clef "treble_8"
  \key c \major
  \time 4/4

  % --- 1. CORDES 6-5-4 (Fret 1 à 12) ---
  <f,\6 a,\5 d\4>1 |   % Dm/F (1-0-0)
  <f,\6 b,\5 d\4>1 |   % Bdim/F (1-2-0)
  <g,\6 b,\5 d\4>1 |   % G (3-2-0)
  <g,\6 b,\5 e\4>1 |   % Em/G (3-2-2)
  <g,\6 c\5 e\4>1 |    % C/G (3-3-2)
  \break

  <a,\6 c\5 e\4>1 |    % Am (5-3-2)
  <a,\6 c\5 f\4>1 |    % F/A (5-3-3)
  <a,\6 d\5 f\4>1 |    % Dm/A (5-5-3)
  <b,\6 d\5 f\4>1 |    % Bdim (7-5-3)
  <b,\6 d\5 g\4>1 |    % G/B (7-5-5)

  \break
<b,\6 e\5 g\4>1 |
  <c\6 e\5 g\4>1 |     % C (8-7-5)
  <c\6 e\5 a\4>1 |     % Am/C (8-7-7)
  <c\6 f\5 a\4>1 |     % F/C (8-8-7)
  <d\6 f\5 a\4>1 |     % Dm (10-8-7)
  \break
  <d\6 f\5 b\4>1 |     % Bdim/D (10-8-9)
  <d\6 g\5 b\4>1 |     % G/D (10-10-9)
  <e\6 g\5 b\4>2       % Em (12-10-9)
  <e\5 g\4 b\3>2 |     % Pivot Em sur cordes 5-4-3 (7-5-4)
  \break

  % --- 2. CORDES 5-4-3 (Fret 5 à 15) ---
  <e\5 g\4 c'\3>1 |    % C/E (7-5-5)
  <e\5 a\4 c'\3>1 |    % Am/E (7-7-5)
  <f\5 a\4 c'\3>1 |    % F/A (8-7-5)
  <f\5 a\4 d'\3>1 |    % Dm/F (8-7-7)
  \break

  <f\5 b\4 d'\3>1 |    % Bdim/F (8-9-7)
  <g\5 b\4 d'\3>1 |    % G/B (10-9-7)
  <g\5 b\4 e'\3>1 |    % Em/B (10-9-9)
  <g\5 c'\4 e'\3>1 |   % C (10-10-9)
  <a\5 c'\4 e'\3>1 |   % Am/C (12-10-9)
  \break

  <a\5 c'\4 f'\3>1 |   % F/C (12-10-10)
  <a\5 d'\4 f'\3>1 |   % Dm/A (12-12-10)
  <b\5 d'\4 f'\3>1 |   % Bdim (14-12-10)
  <b\5 d'\4 g'\3>1 |   % G/B (14-12-12)
  <c'\5 e'\4 g'\3>2    % C/G (15-14-12)
  <c'\4 e'\3 g'\2>2 |  % Pivot C/G sur cordes 4-3-2 (5-5-5)
  \break

  % --- 3. CORDES 4-3-2 (Fret 5 à 14) ---
  <c'\4 e'\3 a'\2>1 |  % Am/C (7-5-5)
  <c'\4 f'\3 a'\2>1 |  % F/C (7-5-6)
  <d'\4 f'\3 a'\2>1 |  % Dm (7-7-6)
  <d'\4 f'\3 b'\2>1 |  % Bdim/D (9-7-6)
  \break

  <d'\4 g'\3 b'\2>1 |  % G/D (9-7-8)
  <e'\4 g'\3 b'\2>1 |  % Em (9-9-8)
  <e'\4 g'\3 c''\2>1 | % C/E (10-9-8)
  <e'\4 a'\3 c''\2>1 | % Am/E (10-9-10)
  <f'\4 a'\3 c''\2>1 | % F/A (10-10-10)
  \break

  <f'\4 a'\3 d''\2>1 | % Dm/F (12-10-10)
  <f'\4 b'\3 d''\2>1 | % Bdim/F (12-10-12)
  <g'\4 b'\3 d''\2>1 | % G/B (12-12-12)
  <g'\4 b'\3 e''\2>1 | % Em/B (14-12-12)
  <g'\4 c''\3 e''\2>2  % C (14-12-13)
  <g'\3 c''\2 e''\1>2 |% Pivot C sur cordes 3-2-1 (5-5-3)
  \break

  % --- 4. CORDES 3-2-1 (Fret 5 à 13) vers C aigu (12-13-12) ---
  <a'\3 c''\2 e''\1>1 |% Am/C (5-5-5)
  <a'\3 c''\2 f''\1>1 |% F/C (5-6-5)
  <a'\3 d''\2 f''\1>1 |% Dm (7-6-5)
  <b'\3 d''\2 f''\1>1 |% Bdim/D (7-6-7)
  \break

  <b'\3 d''\2 g''\1>1 |% G/D (7-8-7)
  <b'\3 e''\2 g''\1>1 |% Em (9-8-7)
  <c''\3 e''\2 g''\1>1 |% C/E (9-8-8)
  <c''\3 e''\2 a''\1>1 |% Am/E (9-10-8)
  <c''\3 f''\2 a''\1>1 |% F/A (10-10-8)
  \break

  <d''\3 f''\2 a''\1>1 |% Dm/F (10-10-10)
  <d''\3 f''\2 b''\1>1 |% Bdim/F (10-12-10)
  <d''\3 g''\2 b''\1>1 |% G/B (12-12-10)
  <e''\3 g''\2 b''\1>1 |% Em/G (12-12-12)
  <g'\3 c''\2 e''\1>1 \bar "|." % C/G (12-13-12)
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
      
      \romanNumerals
    }
    \new TabStaff = "GuitareTab" \with {
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