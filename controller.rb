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
            
            if cmd < 1 && cmd > 1
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
                self.sayhi()
            when 2
                self.move()
            when 3
                self.beam()
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