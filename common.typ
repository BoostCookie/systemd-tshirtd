#set page(width: auto, height: auto, margin: (rest: 0.3em))
#set align(center)
#set text(font: "Roboto", fill: white, weight: "bold", size: 2em)

#let sleeve_angle = 25deg
#let sleeve_height = 1.2em
#let sleeve_width = 1.3em
#let sleeve_space = -0.03em
#box(rotate(-sleeve_angle,  rect(width: sleeve_width, height: sleeve_height, fill: white)))
#h(sleeve_space)#box(image("./systemd-dark-logo.svg"), baseline: -0.332em)#h(sleeve_space)
#box(rotate(sleeve_angle,  rect(width: sleeve_width, height: sleeve_height, fill: white)))
\
systemd-tshirtd
