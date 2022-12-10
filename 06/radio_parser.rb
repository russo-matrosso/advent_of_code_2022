# frozen_string_literal: true

class RadioParser
  def call
    buffer = []
    cursor = 0
    file_descriptor = IO.sysopen('input')
    io = IO.new(file_descriptor)

    loop do
      io.sysseek(cursor)
      char = io.sysread(1)
      puts buffer.join ', '
      buffer.append(char)
      buffer.shift if buffer.size == 15

      break if buffer.uniq.size == 14

      cursor += 1
    rescue EOFError
      break
    end

    io.close

    cursor + 1
  end
end
