
\version "2.16.0" \header {

    texidoc = "Clefs may be transposed up or down
by arbitrary amount, including 15 for two octaves."

}
\layout { ragged-right = ##t  }


\relative c'' {

  \clef "G_8"
  c4
  \clef "G_15"
  c4
  \clef "G_7"
  c4
  \clef "G_6"
  c4
  \clef "G^8"
  c4
  \clef "G^15"
  c4
  \clef "G^9"
  c4
}

