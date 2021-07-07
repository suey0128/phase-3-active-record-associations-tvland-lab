class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        #find the first name and last name and group them into a new string
        self.first_name + ' ' + self.last_name
    end

    def list_roles
        #return an array of string, char_name - show_name
        self.characters.map{|character| character.name + " - " + character.show.name}
    end
end