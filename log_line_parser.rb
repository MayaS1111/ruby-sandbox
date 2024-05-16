class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    index = @line.index("]")
    index += 2

    level = @line.slice(0,index)

    messageS = @line.gsub(level,'')
    messageS =  messageS.strip

    puts messageS
  end

  def log_level
    index = @line.index("]")
    index -= 1
    
    level = @line.slice(1,index)
    level = level.downcase

    puts level
  end

  def reformat
    index1 = @line.index("]")
    index1 -= 1
    level1 = @line.slice(1,index1)
    level1 = level1.downcase

    index2 = @line.index("]")
    index2 += 2
    level2 = @line.slice(0,index2)
    messageS = @line.gsub(level2,'')
    messageS =  messageS.strip

    puts "#{messageS} (#{level1})"
  end
end


#LogLineParser.new('[ERROR]: Invalid operation').message
#LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
#LogLineParser.new('[ERROR]: Invalid operation').log_level
LogLineParser.new('[INFO]: Operation completed').reformat
