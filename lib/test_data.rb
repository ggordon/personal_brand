module TestData
  
  module Post
    extend self
    def valid_options
      {
        :title => "First Post",
        :body  => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod."
      }
    end
  end
  
  module Resume
    extend self
    def valid_options
      {
        :name      => "Gogo Gordon",
        :job_title => "Watch Dog"
      }
    end
  end
  
  module PortfolioItem
    extend self
    def valid_options
      {
        :title => "My Favorite Job",
        :body  => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod."
      }
    end
  end 
end