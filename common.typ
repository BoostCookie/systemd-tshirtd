//#set page(fill: rgb("#201a26"))
#set page(width: 300mm, height: auto, margin: (top: 0em, right: 0em, bottom: 2em, left: 0em))
#set align(center)
#set text(font: "Roboto", fill: white, weight: "bold")

#let brace_angle = 30deg
#let logo_height = 80%
#let line_width = 1.5em
#grid(
  columns: (1fr, 38%, 1fr),
  rows: 12em,
  align: (bottom+right, top+center, bottom+left),
  rotate(-brace_angle, image("./systemd-dark-logo-braceopen.svg", height: logo_height)),
  image("./systemd-dark-logo-inner.svg", height: logo_height),
  rotate(brace_angle, image("./systemd-dark-logo-braceclose.svg", height: logo_height)),
  "",
  grid.cell[#v(-1.57em)#box(rect(fill: white, width: line_width, height: 50%))#h(22em)#box(rect(fill: white, width: line_width, height: 50%))],
  "",
)
#v(-12em)
#text(size: 9em)[systemd-tshirtd]

