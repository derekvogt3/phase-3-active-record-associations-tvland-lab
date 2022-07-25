class Show < ActiveRecord::Base

    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network


    def actors_list
        array = Array.new

        self.actors.each do |character|

            array.push(character.first_name+" "+character.last_name)

            
        end

        array
        
    end




  
end