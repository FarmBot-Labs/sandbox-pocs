F.sequence(version: 3) {
  F.move_absolute(location: F.coordinate(x: 1, y: 2, z: 3),
                  offset: F.coordinate(x: 0, y: 0, z: 0),
                  speed: 4)
  F.move_absolute(location: F.tool(tool_id: 8888),
                  offset: F.coordinate(x: 0, y: 0, z: 0),
                  speed: 4)
  F.move_relative(x: 1,
                  y: 2,
                  z: 3,
                  speed: 4)
  F.write_pin(pin_number: 1,
              pin_value: 128,
              pin_mode: 1)
  F.read_pin(pin_number: 1,
             data_label: "my_pin",
             pin_mode: 1)
  F.wait(milliseconds: 500)
  F.send_message(message: "Bot at coord {{ x }} {{ y }} {{ z }}.",
                 message_type: "info") {
                     F.channel(channel_name: "toast")
                  }
  F._if(lhs: "x",
        rhs: 300,
        op: "is",
        _then: F.execute(sub_sequence_id: 9999),
        _else: F.nothing())
  F.execute(sub_sequence_id: 9999)
}