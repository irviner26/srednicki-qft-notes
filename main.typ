#set document(
  title: [QFT Notes],
  author: "Irvine Ringgo",
)

#show math.equation: set block(breakable: true)

#set page(
  paper: "a4",
  margin: 1in,
  numbering: "1",
)

#set text(
  font: "New Computer Modern",
  size: 12pt,
  lang: "en",
)

#set par(
  justify: true,
  linebreaks: "optimized",
)

#set heading(
  numbering: "1.1.",
)

#align(center)[
  #text(size: 20pt, weight: "bold")[QFT Notes]
]

#include "chapters/01.typ"

#pagebreak()

#include "chapters/02.typ"

#pagebreak()

#include "chapters/03.typ"

#pagebreak()

#include "chapters/04.typ"

#pagebreak()

#include "chapters/05.typ"
