#second ruby program 
#*****Does not work yet(add function doesnt store in hash)

def addLine
    puts"*************************************************"
end

while 1
movies = {
    SuperBad: 2,
    StarWars: 3
}
addLine
puts"What do you want to do(add,update,display,delete) "
addLine


choice = gets.chomp.downcase

case choice
    when"add"
    puts"What is the movie title?"
    addLine
    
        title = gets.chomp
       if movies[title.to_sym] == nil
       
        puts"Whats your rating / 4 for the movie"
        addLine
        
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts"Movie: #{title} Rating: #{rating} added"
        else
       puts"Movie already rated"
       addLine
       
    end
   
    when"update"
            
        puts"What Movies rating do you want to update:"
        addLine
        title = gets.chomp
        
        if movies[title.to_sym]== nil
            puts "Error: Movie not in bank"
            addLine
        else
            
        puts"What do u rate it /4"
        addLine
        rating = gets.chomp.to_i
        movies[title.to_sym] = rating
        
    end
        
   
    when"display"
    if movies.size == 0
        puts"No movies:"
        addLine
    else
    puts"These are the rated movies:"
    addLine
        movies.each do |movie,rating|
            puts"#{movie}: #{rating}"
        end
    end
    
    when"delete"
        puts"Enter movie to delete:"
        addLine
        title = gets.chomp
       if movies[title.to_sym]==nil
           puts"Error: movie not rated"
           addLine
        else
            movies.delete(title.to_sym)
        end
else
    puts"Error!"
    
end
end
