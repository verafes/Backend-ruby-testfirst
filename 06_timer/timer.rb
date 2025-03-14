class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    min = (@seconds % 3600) / 60
    sec = @seconds % 60

    "#{padded(hours)}:#{padded(min)}:#{padded(sec)}"
  end

  def padded(num)
    num < 10 ? "0#{num}" : num.to_s
  end
end
