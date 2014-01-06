class Find
	def show
		 my_hash = {:organisation => "Diaspark", :employee_strength => 300, :branches => {:name => "mobility", :technologies => {name: "ROR", employees: { name: "abc", exp_level: "fresher"}}}}
		#a={}, b={}, c={}, d={}
		a=my_hash[:organisation]
		b=my_hash[:branches][:technologies]
		c=b[:employees][:name]
		d=b[:employees][:exp_level]
		puts "The organization and experience level of the user 'abc' is #{a} and #{d}."

	end
end
f=Find.new
f.show