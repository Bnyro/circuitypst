#import "@preview/cetz:0.1.1"
#import cetz.draw: line as cvline, content
#import "circuitypst/circuitypst.typ": node, to
#import "circuitypst/parts.typ"

#figure(
  cetz.canvas({
    to("battery", (0,1), (0,3), label: "5V", v: $V_0$)
  }),
  caption: "Battery"
)

#figure(
  cetz.canvas({
    to("isourceAM", (0,1), (0,3), label: "5V", v: $V_0$)
  }),
  caption: "Battery"
)

#figure(
  cetz.canvas(length: 1cm, debug: false, {
    to("isourceAM", (0,0), (0,3), label: $I_0$, v: h(0.5em) + $V_0$)
    to("short", (), (2,3), i: $I_0$,)
    to("R", (), (2, 0), label: [$R_1$], poles: "*-*", i: (">_", $i_1$))
    cvline((2,3), (4,3))
    to("R", (), (4, 0), label: [$R_2$], name: "R", i: (">_", $i_2$))
    cvline((), (0,0))
  }),
  caption: [Current Shunt]
)
