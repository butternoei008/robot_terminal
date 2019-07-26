require_relative "robot"
class Controller < Robot
    def command()
        system "cls"
        
        cmd = ""

        loop do
            self.bettery
            puts "\n=========Comand========="
            puts "[1] Sayhi!"
            puts "[2] Move"
            puts "[3] Beammmmm!!!"
            puts "[0] Exit"
            
            print "Choose an order: "
            cmd = gets.chomp.to_i
            
            if cmd < 0 || cmd > 3
                puts "can't choose order try again!"                
            else
                break
            end
        end

        return cmd
    end
    
    def route_command()
        loop do
            cmd = self.command()

            case cmd
            when 1
                if @bettery >= 0.5 
                    self.sayhi()
                else
                    puts "Low bettery please choose [0]exit and come back :)"
                    self.press_key
                end
            when 2
                if @bettery > 0 
                    self.move()
                else
                    puts "Low bettery please choose [0]exit and come back :)"
                    self.press_key
                end
            when 3
                if @bettery >= 1 
                    self.beam()
                else
                    puts "Low bettery please choose [0]exit and come back :)"
                    self.press_key
                end
            else
                if cmd != 0
                    puts "not found"
                end
            end

            break if cmd == 0
        end
    end
end

robot = Controller.new
robot.route_command