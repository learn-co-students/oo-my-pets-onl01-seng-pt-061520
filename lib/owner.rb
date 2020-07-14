
class Owner

       attr_reader :name, :species
    
      @@all=[]
     
      
      def initialize(name)
        @name=name
        @species="human"
        @@all << self
       
      end

      def say_species
          return "I am a #{@species}."
      end

      def self.all
          @@all
      end

      def self.count
          @@all.count
      end

      def self.reset_all
          @@all.clear
      end
      
      def cats
          Cat.all.select{|cats|cats.owner==self}
      end

      def dogs
          Dog.all.select{|dogs|dogs.owner==self}
      end

      def buy_cat(name)
          Cat.new(name,self)
      end

      def buy_dog(name)
          name= Dog.new(name,self)
      end

      def walk_dogs
           self.dogs.each {|walk|walk.mood="happy"}
      end

      def feed_cats
          self.cats.each {|feed|feed.mood="happy"}
      end

      def sell_pets
           pets=self.cats+self.dogs
           pets.each do |pets|
               pets.owner=nil
               pets.mood="nervous"
          end
      end

      def list_pets
         "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
      end

end