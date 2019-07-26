class Robot
    def initialize()
        @bettery = 100
    end

    def press_key
        require 'io/console' 

        puts "\n\nPress any key is text....\n\n"
        STDIN.getch
    end
    
    def sayhi()
        print "\nWhat is your name?"
        print "\nMy name is: "
        
        name = gets.chomp
        
        puts "\nHi #{name}"
        puts "I'm a robot :D"

        self.press_key()
    end

    def meter
        meter = 0

        loop do
            print "\nHow many meters: "
            meter = gets.chomp.to_i

            if meter > 0
                break
            else
                puts "Robot can't move!"
            end
        end

        return meter
    end

    def forward()
        meter = self.meter()
        puts "Robot go forward #{meter} m.\n\n"
    end
    
    def left()
        meter = self.meter()
        puts "Robot go Left #{meter} m.\n\n"
    end
    
    def right()
        meter = self.meter()
        puts "Robot go Right #{meter} m.\n\n"
    end

    def back()
        meter = self.meter()
        puts "Robot go back #{meter} m.\n\n"
    end
    
    def move
        system "cls"
        
        loop do
            puts "[8] Forward"
            puts "[4] Left"
            puts "[6] Right"
            puts "[2] Back"
            puts "[0] Stop!"

            print "Choose an order: "
            ctr = gets.chomp.to_i

            if ctr == 8 || ctr == 4 || ctr == 6 || ctr == 2 || ctr == 0
                case ctr
                when 8
                    self.forward()
                when 4
                    self.left()
                when 6
                    self.right()
                when 2
                    self.back()
                when 0
                    break
                end
            else
                puts "Can't choose try again!"
            end
        end
    end
end