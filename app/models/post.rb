class Post < ApplicationRecord
    validates :title ,presence: true
    validates :description ,presence: true
    validates :title ,length: { minimum: 10 }
    validates :description ,length: { minimum: 30 }

    before_save do 
        self.title = self.title + "post"
    end
end
