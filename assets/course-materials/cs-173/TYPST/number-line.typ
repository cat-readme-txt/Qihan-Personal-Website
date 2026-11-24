#import "@local/cetzp:0.1.0" as cetzp: cetz, canvas

#let natural-numbers = {
  set text(size: 2.4em)
  canvas({
    import cetz.draw: hide, on-layer
    import cetzp: inks
    import cetzp.draw: content, point, arc, arc-through, sector-between, edge, region
    import cetzp.vector: add, sub, scale

    let y = 2/3
    let zero  = (0.0, 0.0)
    let one   = (1.5, 0.0)
    let two   = (3.0, 0.0)
    let three = (4.5, 0.0)
    let four  = (6.0, 0.0)
    let five  = (7.5, 0.0)
    let six   = (9.0, 0.0)
    let etc   = (10.5, 0.0)

    content(zero,   name: "zero")[#text(fill: inks.off.black)[0]]
    content(one,    name: "one")[#text(fill: inks.violet)[1]]
    content(two,    name: "two")[#text(fill: inks.red)[2]]
    content(three,  name: "three")[#text(fill: inks.orange)[3]]
    content(four,   name: "four")[#text(fill: inks.yellow)[4]]
    content(five,   name: "five")[#text(fill: inks.green)[5]]
    content(six,    name: "six")[#text(fill: inks.blue)[6]]
    hide(content(etc,    name: "etc")[7])

    arc-through(
      "zero.north-east",
      ((zero.at(0) + one.at(0))/2, y),
      "one.north-west",
      stroke: (paint: inks.off.black),
      mark: (
        stroke: (paint: inks.off.black),
        fill: inks.off.black,
        end: ")>"
      )
    )
    content(((zero.at(0) + one.at(0))/2, 1.5*y))[#text(size: (1/2.4)*1em, fill: inks.off.black)[$frak("suc")$]]

    arc-through(
      "one.south-east",
      ((one.at(0) + two.at(0))/2, -y),
      "two.south-west",
      stroke: (paint: inks.violet),
      mark: (
        stroke: (paint: inks.violet),
        fill: inks.violet,
        end: ")>"
      )
    )
    content(((one.at(0) + two.at(0))/2, -1.5*y))[#text(size: (1/2.4)*1em, fill: inks.violet)[$frak("suc")$]]

    arc-through(
      "two.north-east",
      ((two.at(0) + three.at(0))/2, y),
      "three.north-west",
      stroke: (paint: inks.red),
      mark: (
        stroke: (paint: inks.red),
        fill: inks.red,
        end: ")>"
      )
    )
    content(((two.at(0) + three.at(0))/2, 1.5*y))[#text(size: (1/2.4)*1em, fill: inks.red)[$frak("suc")$]]

    arc-through(
      "three.south-east",
      ((three.at(0) + four.at(0))/2, -y),
      "four.south-west",
      stroke: (paint: inks.orange),
      mark: (
        stroke: (paint: inks.orange),
        fill: inks.orange,
        end: ")>"
      )
    )
    content(((three.at(0) + four.at(0))/2, -1.5*y))[#text(size: (1/2.4)*1em, fill: inks.orange)[$frak("suc")$]]

    arc-through(
      "four.north-east",
      ((four.at(0) + five.at(0))/2, y),
      "five.north-west",
      stroke: (paint: inks.yellow),
      mark: (
        stroke: (paint: inks.yellow),
        fill: inks.yellow,
        end: ")>"
      )
    )
    content(((four.at(0) + five.at(0))/2, 1.5*y))[#text(size: (1/2.4)*1em, fill: inks.yellow)[$frak("suc")$]]

    arc-through(
      "five.south-east",
      ((five.at(0) + six.at(0))/2, -y),
      "six.south-west",
      stroke: (paint: inks.green),
      mark: (
        stroke: (paint: inks.green),
        fill: inks.green,
        end: ")>"
      )
    )
    content(((five.at(0) + six.at(0))/2, -1.5*y))[#text(size: (1/2.4)*1em, fill: inks.green)[$frak("suc")$]]

    arc-through(
      "six.north-east",
      ((six.at(0) + etc.at(0))/2, y),
      "etc.north-west",
      stroke: (
        paint: inks.blue,
        dash: "dashed"
      ),
      mark: (
        stroke: (paint: inks.blue),
        fill: none,
        end: ")>"
      )
    )
    // content(((six.at(0) + etc.at(0))/2, 1.5*y))[#text(size: (1/2.4)*1em, fill: inks.blue)[...]]
  })
}

#let successor-numbers = {
  set text(size: 2.4em)
  canvas({
    import cetz.draw: hide, on-layer
    import cetzp: inks
    import cetzp.draw: content, point, arc, arc-through, sector-between, edge, region
    import cetzp.vector: add, sub, scale

    let y = 3/5
    let zero  = (0.0, 0.0)
    let one   = (2.75, 0.0)
    let two   = (7.25, 0.0)
    // let three = (9, 0.0)
    // let four  = (6.0, 0.0)
    // let five  = (7.5, 0.0)
    // let six   = (9.0, 0.0)
    let etc   = (11.75, 0.0)

    content(zero,   name: "zero")[#text(fill: inks.off.black)[0]]
    content(one,    name: "one")[#text(fill: inks.violet)[$frak("suc")($0$)$]]
    content(two,    name: "two")[#text(fill: inks.red)[$frak("suc")(frak("suc")($0$))$]]
    // content(three,  name: "three")[#text(fill: inks.orange)[3]]
    // content(four,   name: "four")[#text(fill: inks.yellow)[4]]
    // content(five,   name: "five")[#text(fill: inks.green)[5]]
    // content(six,    name: "six")[#text(fill: inks.blue)[6]]
    hide(content(etc,    name: "etc")[7])

    arc-through(
      "zero.north-east",
      ((zero.at(0) + one.at(0))/2, y),
      "one.north-west",
      stroke: (paint: inks.off.black),
      mark: (
        stroke: (paint: inks.off.black),
        fill: inks.off.black,
        end: ")>"
      )
    )

    arc-through(
      "one.south-east",
      ((one.at(0) + two.at(0))/2, -y),
      "two.south-west",
      stroke: (paint: inks.violet),
      mark: (
        stroke: (paint: inks.violet),
        fill: inks.violet,
        end: ")>"
      )
    )

    arc-through(
      "two.north-east",
      ((two.at(0) + etc.at(0))/2, y),
      "etc.north-west",
      stroke: (
        paint: inks.red,
        dash: "dashed"
      ),
      mark: (
        stroke: (paint: inks.red),
        fill: none,
        end: ")>"
      )
    )

    // arc-through(
    //   "three.south-east",
    //   ((three.at(0) + four.at(0))/2, -y),
    //   "four.south-west",
    //   stroke: (paint: inks.orange),
    //   mark: (
    //     stroke: (paint: inks.orange),
    //     fill: inks.orange,
    //     end: ")>"
    //   )
    // )

    // arc-through(
    //   "four.north-east",
    //   ((four.at(0) + five.at(0))/2, y),
    //   "five.north-west",
    //   stroke: (paint: inks.yellow),
    //   mark: (
    //     stroke: (paint: inks.yellow),
    //     fill: inks.yellow,
    //     end: ")>"
    //   )
    // )

    // arc-through(
    //   "five.south-east",
    //   ((five.at(0) + six.at(0))/2, -y),
    //   "six.south-west",
    //   stroke: (paint: inks.green),
    //   mark: (
    //     stroke: (paint: inks.green),
    //     fill: inks.green,
    //     end: ")>"
    //   )
    // )

    // arc-through(
    //   "six.north-east",
    //   ((six.at(0) + etc.at(0))/2, y),
    //   "etc.north-west",
    //   stroke: (
    //     paint: inks.blue,
    //     dash: "dashed"
    //   ),
    //   mark: (
    //     stroke: (paint: inks.blue),
    //     fill: none,
    //     end: ")>"
    //   )
    // )
  })
}
