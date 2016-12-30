$LOCALS ||= {}

module FarmbotBotRuntime
  def self.locals
      $LOCALS[Fiber.current] ||= {}
  end

  def self.done
    locals[:hit_points] += 1
    puts "HIT POINTS: #{ locals[:hit_points] }"
    Fiber.yield
  end

  def self.sequence(options = {}, &blk)
      puts "Executing: sequence"
      locals[:hit_points] = 0
      blk.call()
      self.done()
  end

  def self.move_absolute(options = {})
      puts "Executing: move_absolute"
      self.done()
  end

  def self.coordinate(options = {})
      puts "Executing: coordinate"
      self.done()
  end

  def self.tool(options = {})
      puts "Executing: tool"
      self.done()
  end

  def self.move_relative(options = {})
      puts "Executing: move_relative"
      self.done()
  end

  def self.write_pin(options = {})
      puts "Executing: write_pin"
      self.done()
  end

  def self.read_pin(options = {})
      puts "Executing: read_pin"
      self.done()
  end

  def self.wait(options = {})
      puts "Executing: wait"
      self.done()
  end

  def self.send_message(options = {})
      puts "Executing: send_message"
      self.done()
  end

  def self.channel(options = {})
      puts "Executing: channel"
      self.done()
  end

  def self._if(options = {})
      puts "Executing: _if"
      self.done()
  end

  def self.execute(options = {})
      puts "Executing: execute"
      self.done()
  end

  def self.nothing(options = {})
      puts "Executing: nothing"
      self.done()
  end
end
