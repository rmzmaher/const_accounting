class Pay < ActiveRecord::Base
  belongs_to :contractor
  def self.total_paid_for_contractor(contractor_id)
  	pays = Pay.where(contractor_id: contractor_id)
  	@total=0
  	pays.each do |pay|
  		@total = pay.amount + @total
  	end
  	return @total
  end

   def self.total_paid_per_day(date)
    paid = 0
    pays =  Pay.where(date: date)
    pays.each do |pay|
       paid= pay.amount + paid
    end
    return paid
  end

    def self.get_pays_mod(date)
    @pays =  Pay.where(date: date)
    @temp_pay = {}
    @pays_mod = []
    @pays.each do |pay|
      @temp_pay[:amount] = pay.amount
      @temp_pay[:contractor] = pay.contractor.name
      @temp_pay[:note] = pay.note
      @temp_pay[:quantity] = buy.quantity
      @pays_mod.push(@temp_buy)
      #must be emptied to store the next value don't try to remove
      @temp_pay= {}
    end
    return @pays_mod    
  end

end
