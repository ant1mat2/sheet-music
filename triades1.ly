\version "2.20.0"

\header {
  title = "Étude Intégrale de Conduite de Voix Diatonique"
  subtitle = "Cycle complet note à note jusqu'au C aigu (x-x-x-12-13-12)"
  instrument = "Guitare"
  tagline = ##f
}

harmonies = \chordmode {
  % Groupe 1 (6-5-4)
  d1:m/f | b1:dim/f | g1/b | e1:m/b | c1/e |
  a1:m/e | f1/a | d1:m/a | b1:dim | g1/b |
  c1/g | a1:m/c | f1/c | d1:m | b1:dim/d | g1/d | e1:m |
  
  % Groupe 2 (5-4-3)
  e1:m | c1/e | a1:m/e | f1/a | d1:m/f |
  b1:dim/f | g1/b | e1:m/b | c1 | a1:m/c |
  f1/c | d1:m/a | b1:dim | g1/b | c1/g |
  
  % Groupe 3 (4-3-2)
  c1/g | a1:m/c | f1/c | d1:m | b1:dim/d |
  g1/d | e1:m | c1/e | a1:m/e | f1/a |
  d1:m/f | b1:dim/f | g1/b | e1:m/b | c1 |
  
  % Groupe 4 (3-2-1)
  c1 | a1:m/c | f1/c | d1:m | b1:dim/d |
  g1/d | e1:m | c1/e | a1:m/e | f1/a |
  d1:m/f | b1:dim/f | g1/b | e1:m/b | c1
}

theNotes = {
  \clef "treble_8"
  \key c \major
  \time 4/4

  % --- CORDES 6-5-4 ---
  <f,\6 a,\5 d\4>1 |
  <f,\6 b,\5 d\4>1 |
  <g,\6 b,\5 d\4>1 |
  <g,\6 b,\5 e\4>1 |
  <g,\6 c\5 e\4>1 |
  \break

  <a,\6 c\5 e\4>1 |
  <a,\6 c\5 f\4>1 |
  <a,\6 d\5 f\4>1 |
  <b,\6 d\5 f\4>1 |
  <b,\6 d\5 g\4>1 |
  \break

  <c\6 e\5 g\4>1 |
  <c\6 e\5 a\4>1 |
  <c\6 f\5 a\4>1 |
  <d\6 f\5 a\4>1 |
  <d\6 f\5 b\4>1 |
  <d\6 g\5 b\4>1 |
  <e\6 g\5 b\4>1 |
  \break

  % --- CORDES 5-4-3 ---
  <e\5 g\4 b\3>1 |
  <e\5 g\4 c'\3>1 |
  <e\5 a\4 c'\3>1 |
  <f\5 a\4 c'\3>1 |
  <f\5 a\4 d'\3>1 |
  \break

  <f\5 b\4 d'\3>1 |
  <g\5 b\4 d'\3>1 |
  <g\5 b\4 e'\3>1 |
  <g\5 c'\4 e'\3>1 |
  <a\5 c'\4 e'\3>1 |
  \break

  <a\5 c'\4 f'\3>1 |
  <a\5 d'\4 f'\3>1 |
  <b\5 d'\4 f'\3>1 |
  <b\5 d'\4 g'\3>1 |
  <c'\5 e'\4 g'\3>1 |
  \break

  % --- CORDES 4-3-2 ---
  <c'\4 e'\3 g'\2>1 |
  <c'\4 e'\3 a'\2>1 |
  <c'\4 f'\3 a'\2>1 |
  <d'\4 f'\3 a'\2>1 |
  <d'\4 f'\3 b'\2>1 |
  \break

  <d'\4 g'\3 b'\2>1 |
  <e'\4 g'\3 b'\2>1 |
  <e'\4 g'\3 c''\2>1 |
  <e'\4 a'\3 c''\2>1 |
  <f'\4 a'\3 c''\2>1 |
  \break

  <f'\4 a'\3 d''\2>1 |
  <f'\4 b'\3 d''\2>1 |
  <g'\4 b'\3 d''\2>1 |
  <g'\4 b'\3 e''\2>1 |
  <g'\4 c''\3 e''\2>1 |
  \break

  % --- CORDES 3-2-1 ---
  <g'\3 c''\2 e''\1>1 |
  <a'\3 c''\2 e''\1>1 |
  <a'\3 c''\2 f''\1>1 |
  <a'\3 d''\2 f''\1>1 |
  <b'\3 d''\2 f''\1>1 |
  \break

  <b'\3 d''\2 g''\1>1 |
  <b'\3 e''\2 g''\1>1 |
  <c''\3 e''\2 g''\1>1 |
  <c''\3 e''\2 a''\1>1 |
  <c''\3 f''\2 a''\1>1 |
  \break

  <d''\3 f''\2 a''\1>1 |
  <d''\3 f''\2 b''\1>1 |
  <d''\3 g''\2 b''\1>1 |
  <e''\3 g''\2 b''\1>1 |
  <g'\3 c''\2 e''\1>1 \bar "|."
}

\score {
  <<
    \new ChordNames {
      \harmonies
    }
    \new Staff = "GuitarePortee" {
      \theNotes
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