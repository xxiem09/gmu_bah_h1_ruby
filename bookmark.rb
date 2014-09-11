# A class named Bookmark

class Bookmark
     def initialize( as_url , as_title)
        @url = as_url
        @title = as_title
        @last_visited = Visit!
     end

     def Visit!
         current_time = Time.now
         return current_time
     end
end
