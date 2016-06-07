Person = Struct.new(:name, :age)

mike = Person.new("Mike Tsui", 46)
alison = Person.new("Alison Chiu", 45)

require 'pstore'
store = PStore.new("pstore_test.bin")
store.transaction do
	store[:people] = Array.new
	store[:people] << mike
	store[:people] << alison
end

family = []
dbfile = PStore.new("pstore_test.bin")
dbfile.transaction do
	family = dbfile[:people]
end

family.each { |person| puts person.name+": "+person.age.to_s }
