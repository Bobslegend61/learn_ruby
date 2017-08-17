class Timer
  #write your code here
  attr_accessor :seconds
  def initialize
    self.seconds = 0
  end

  def time_string
    string = ""
    hour = nil
    minute = nil
    sec = nil
    if self.seconds > 59
      minute = self.seconds / 60
      hour = minute / 60
      if hour > 0
        minute = minute - (hour * 60)
      end
      sec = self.seconds - ((hour * 3600) + (minute * 60))

      hour = padded hour
      minute = padded minute
      sec = padded sec

      string = "#{hour}:#{minute}:#{sec}"
    else
      if self.seconds.to_s.length == 1
        string = "00:00:0"+self.seconds.to_s
      else
        string = "00:00:"+self.seconds.to_s
      end
    end
    return string
  end

  def padded n
    if n.to_s.length == 1
      return "0"+n.to_s

    else
      return n.to_s
    end
  end
end

timmer = Timer.new
timmer.seconds = 66
puts timmer.time_string
