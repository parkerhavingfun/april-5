class Point < ActiveRecord::Base
    
    has_many :claps
    
    validates_presence_of :title, :topic, :body
    
end
