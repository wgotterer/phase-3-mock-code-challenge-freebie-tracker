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

def give_away(newDev, freebie)
  if freebie.dev == self
    freebie.update(dev: newDev)
  end
end

end


# rick.freebies.first.dev_id = 2