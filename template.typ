#let book(
  title: [Book title],
  author: "Author",
  paper: "a5",
  dedication: none,
  publishing-info: none,
  body,
) = {
  // Set the document's metadata.
  set document(title: title, author: author)

  set text(font: "TeX Gyre Pagella", lang: "spa")
  // set text(font: "New Computer Modern", size: 12pt, lang: "spa")

  set page(
    paper: "a5",
    numbering: "1",
    number-align: center,
    margin: (x: 1.8cm, y: 3cm),
  )

  set par(
    first-line-indent: 2em,
    justify: true,
    leading: 0.55em,
    linebreaks: "optimized",
  )


  // Capítulos
  set heading(numbering: "1")
  show heading: it => [
    #set align(center)
    #set text(20pt, weight: "regular")
    #pagebreak(to: "even")
    #block(
      below: 80pt,
      // fill: rgb("#f0f0f0"),
      // radius: 7pt,
      // outset: 10pt,
      [
        #smallcaps("Capítulo")
        #counter(heading).display()
        #it.body
      ],
    )
  ]

  // The first page.
  page(align(center + horizon)[
    #text(2em)[*#title*]
    #v(2em, weak: true)
    #text(1.6em, author)
  ])


  if publishing-info != none {
    align(center + bottom, text(0.8em, publishing-info))
    pagebreak()
  }

  if dedication != none {
    v(15%)
    align(center, strong(dedication))
  }

  pagebreak(to: "odd")


  body
}
