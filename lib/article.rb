class Magazine

    attr_accessor :name, :category
    @@all = []
  
    def initialize(name, category)
        @name = name
        @category = category
        ##shovel each new instance into an array
        @@all << self
      end
      def self.all
        @@all
      end
    
         ##helper function
      def magazine_articles
        Article.all.select{|article| article.magazine.name == self.name}
      end
end