Como compilas el PDF?

1. Abre el terminal (Control+Ñ)
2. `typst watch master.typ book.pdf`

Cosas importantes
1. el signo = es equivalente a cada capítulo
2. para poner el guion para hablar es "--"
3. para la cursiva es el guión bajo "_"


Esto es el MASTER
#import "template.typ": *

#show: book.with(

  title: "Dead End",

  author: "Adelaida Guillén Moreno",

)

// CONTENIDO

#include "content/1.typ"

#include "content/2.typ"

#include "content/3.typ"

#include "content/4.typ"