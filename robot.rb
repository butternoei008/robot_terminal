class Robot
    def initialize()
        @bettery = ""
    end
    
    def sayhi()
        require 'io/console' 
        
        print "\nWhat is your name?"
        print "\nMy name is: "
        
        name = gets.chomp
        
        puts "\nHi #{name}"
        puts "I'm a robot :D"

        STDIN.getch
    end

end

class Controller < Robot
    def command()
        cmd = ""

        loop do
            puts "[1] sayhi!"
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