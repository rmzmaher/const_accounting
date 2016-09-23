module ApplicationHelper
	ARABIC_NUMBERS = %w(٠ ١ ٢ ٣ ٤ ٥ ٦ ٧ ٨ ٩)
	def tn numbers
  		numbers = numbers.to_s if numbers.is_a? Integer
  		results = numbers.chars.map { |char| ARABIC_NUMBERS[char.to_i] }.join
	end
end
