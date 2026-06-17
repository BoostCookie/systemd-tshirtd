#let logo = sys.inputs.at("logo", default: "new")
#let mode = sys.inputs.at("mode", default: "dark")
#let bg = sys.inputs.at("bg", default: "solid")

#let background-color = if bg == "transparent" {
  none
} else if mode == "dark" {
  rgb("#201a26")
} else {
  white
}

#let foreground-color = if mode == "dark" {
  white
} else {
  rgb("#201a26")
}

#set page(
  width: if logo == "new" { 256mm } else { 252mm },
  height: auto,
  margin: (top: 0em, right: 0em, bottom: 2em, left: 0em),
  fill: background-color,
)

#set align(center)
#let logo-text = text(
  size: 9em,
  font: "Roboto",
  fill: foreground-color,
  weight: "bold",
)[systemd-tshirtd]

#let print-orig-logo(mode: "dark") = {
  let logo-height = 9.6em
  image("assets/systemd-" + mode + "-logo.svg", height: logo-height)
  v(-4.5em)
  logo-text
}

#let print-new-logo(mode: "dark") = {
  let brace-angle = 30deg
  let logo-height = 80%
  let line-width = 1.5em

  grid(
    columns: (1fr, 38%, 1fr),
    rows: 12em,
    align: (bottom+right, top+center, bottom+left),

    rotate(-brace-angle, image("assets/systemd-" + mode + "-logo-braceopen.svg", height: logo-height)),
    image("assets/systemd-logo-inner.svg", height: logo-height),
    rotate(brace-angle, image("assets/systemd-" + mode + "-logo-braceclose.svg", height: logo-height)),

    "",
    grid.cell[
      #v(-1.572em)
      #box(rect(fill: foreground-color, width: line-width, height: 50%))
      #h(17.53em)
      #box(rect(fill: foreground-color, width: line-width, height: 50%))
    ],
    "",
  )

  v(-12em)
  logo-text
}

#if logo == "orig" {
  print-orig-logo(mode: mode)
} else if logo == "new" {
  print-new-logo(mode: mode)
} else {
  print-new-logo(mode: mode)
  //panic("Unknown logo: " + logo)
}
