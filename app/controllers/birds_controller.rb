# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render 'birds/index.html.erb'    #<- we already know this isn't needed since rails implicitly does it for us with the naming convention
#   end
# end


# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
    # render plain: "Hello #{@birds[3].name}"  #<- this just renders plain text from a Rails controller 
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'   # <- we can write ANYTHING after 'json:' as long as it can be converted to valid JSON
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: { message: 'Hashes of data will get converted to JSON' }  #<- alongs with strings, we can also pass: hashes, arrays, and other data types
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: ['As','well','as','arrays']
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: @birds  #<- @birds is a collection of data, so we can use this too
#   end
# end

# class BirdsController < ApplicationController
#   def index
#     @birds = Bird.all
#     render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }  #<- birds and messages are keys, so the object returned has two keys, each pointing to an array. 
#   end
# end

class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds  #<- no instance variables needed, since we're not rendering to ERB
  end
end