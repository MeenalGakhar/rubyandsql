# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

# 2. create 1-2 new contacts for each company (they can be made up)

amazon=Company.where({name:"Amazon"})[0]
amazon_id = amazon.id
new_contact =  Contact.new
new_contact.first_name= "Andy"
new_contact.last_name="Jassy"
new_contact.email= "andy@amazon.com"
new_contact.company_id= amazon_id
new_contact.save
puts new_contact.inspect
puts "There are now #{Contact.all.count} contacts."

tesla=Company.where({name:"Tesla"})[0]
tesla_id = tesla.id
new_contact =  Contact.new
new_contact.first_name= "Elon"
new_contact.last_name="Musk"
new_contact.email= "elon@tesla.com"
new_contact.company_id= tesla_id
new_contact.save
puts new_contact.inspect

apple=Company.where({name:"Apple, Inc."})[0]
apple_id = apple.id
new_contact =  Contact.new
new_contact.first_name= "Tim"
new_contact.last_name="Cook"
new_contact.email= "time@apple.com"
new_contact.company_id= apple_id
new_contact.save
puts new_contact.inspect

apple=Company.where({name:"Apple, Inc."})[0]
apple_id = apple.id
new_contact =  Contact.new
new_contact.first_name= "Cgaig"
new_contact.last_name="Fred"
new_contact.email= "craig@apple.com"
new_contact.company_id= apple_id
new_contact.save
puts new_contact.inspect


# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:
puts "There are now #{Contact.all.count} contacts."
all_contacts= Contact.all
for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} #{contact.email}"
end

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
