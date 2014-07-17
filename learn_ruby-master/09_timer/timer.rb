class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  
  def pad(num)
    str = num.to_s
    if str.length == 1
      str = "0" + str
    end
    return str
  end

  def time_string
    time = []
    hours = @seconds/3600
    remain = @seconds%3600
    time<<pad(hours)
    time<<pad(remain/60)
    time<<pad(remain%60)
    return time.join(":")
  end
  
end

