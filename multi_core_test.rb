def cpu_intensive_process
  puts "Pid: #{Process.pid}"
  x = 0
  10000000.times do |i|
    x = i + x
  end
end
i =0
3.times do  
i+=1
  fork
  cpu_intensive_process
puts i
end
