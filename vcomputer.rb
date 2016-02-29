#unfinished
#to complete: update,delete and display


class Computer
     @@users = {}
    def initialize(username,password)
        @username = username
        @password = password
        @@files = {}
        @@users[username] = password 
        
        
        
        
    end
    
    def Computer.display_files
        if @files.size == 0
               puts"No files"
        else
         @files.each do |filename,time|
           puts "#{filename} #{time}"
       end
       end
    end
    
    
    def update(filename)
        
    end
    
    def delete(filename)
        
    end
    
    
    def create(filename)
        @time = Time.now
        @files[filename] = time
        puts"New file created."
    end
    
    def Computer.get_users
        @@users
    end
end


my_computer = Computer.new("Donovan69","Fuckthe")
