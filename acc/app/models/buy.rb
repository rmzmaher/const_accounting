class Buy < ActiveRecord::Base
  belongs_to :good
  def self.total_price_per_good(good_id)
  	@total_price=0
  	@estimated_price=0
  	buys = Buy.where(good_id: good_id)
  	buys.each do |buy|
  		@total_price = buy.paid + @total_price
  		@estimated_price=(buy.quantity*buy.price_per_unit)+@estimated_price
  	end
  	return @total_price,@estimated_price
  end

  def self.total_cost_per_day(date)
    cost = 0
    buys =  Buy.where(date: date)
    buys.each do |buy|
       cost= buy.paid + cost
    end
    return cost
  end

  def self.get_buys_mod(date)
    @buys =  Buy.where(date: date)
    @temp_buy = {}
    @buys_mod = []
    @buys.each do |buy|
      @temp_buy[:paid] = buy.paid
      @temp_buy[:unit] = buy.good.unit
      @temp_buy[:good] = buy.good.name
      @temp_buy[:note] = buy.note
      @temp_buy[:quantity] = buy.quantity
      @buys_mod.push(@temp_buy)
      #must be emptied to store the next value don't try to remove
      @temp_buy= {}
    end
    return @buys_mod    
  end

end
