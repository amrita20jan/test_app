class Square
	
	def sqa(n)
		 s=0
	
		for i in 1..n
			s = s + n
		end
		return s.to_f
		puts "this the square #{s} of number #{n}"
	end
  
   def sqa_f(n) 
			y=0.000
			#y.to_f
			puts y
			x=n.to_r
			p=sqa(x.numerator)
			q=sqa(x.denominator)
			puts p
			puts q
			y = p/q
		puts "this the square #{y} of number #{n}"
	end


o=Square.new
o.sqa_f(2.5)
end

