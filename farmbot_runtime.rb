require "fiber"

module FarmbotBotRuntime
  def self.done
    Thread.current[:hit_points] += 1
    puts "HIT POINTS: #{ Thread.current[:hit_points] }"
    Fiber.yield
  end

  def self.sequence(version:, &blk)
      puts "Executing: sequence"
      Thread.current[:hit_points] = 0
      blk.call()
      self.done()
  end

  def self.move_absolute(location:, offset:, speed:)
      puts "Executing: move_absolute"
      self.done()
  end

  def self.coordinate(x:, y:, z:)
      puts "Executing: coordinate"
      self.done()
  end

  def self.tool(tool_id:)
      puts "Executing: tool"
      self.done()
  end

  def self.move_relative(x:, y:, z:, speed:)
      puts "Executing: move_relative"
      self.done()
  end

  def self.write_pin(pin_number:, pin_value:, pin_mode:)
      puts "Executing: write_pin"
      self.done()
  end

  def self.read_pin(pin_number:, data_label:, pin_mode:)
      puts "Executing: read_pin"
      self.done()
  end

  def self.wait(milliseconds:)
      puts "Executing: wait"
      self.done()
  end

  def self.send_message(message:, message_type:)
      puts "Executing: send_message"
      self.done()
  end

  def self.channel(channel_name:)
      puts "Executing: channel"
      self.done()
  end

  def self._if(lhs:, op:, rhs:, _then:, _else:)
      puts "Executing: _if"
      self.done()
  end

  def self.execute(sub_sequence_id:)
      puts "Executing: execute"
      self.done()
  end

  def self.nothing
      puts "Executing: nothing"
      self.done()
  end
end