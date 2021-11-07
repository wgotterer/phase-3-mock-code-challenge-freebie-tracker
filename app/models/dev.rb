class Dev < ActiveRecord::Base
has_many :freebies
has_many :companies, through: :freebies

def recieved_one?(item_name)
    self.freebies.map do |freebie|
       if freebie.item_name == item_name
        true
       else
        false
       end
  end
end

def give_away(dev, freebie)
dev.freebies.map do |freebie|
    freebie.dev_id = dev.dev_id
end
end

end
