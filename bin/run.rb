require_relative '../config/environment'
prompt = TTY::Prompt.new
ActiveRecord::Base.logger.level = 1
current_user=nil
choice=true



while choice do
    name_response = prompt.select('Would you like to Adopt or Foster?',["Adopt","Foster"])
    if name_response.downcase=="foster"
        puts "So you want to foster"
        choice=false
        option=FosterFamily
    elsif name_response.downcase=="adopt"
        puts "So you want to adopt"
        choice=false
       option=Applicant
    else
        puts "Sorry try again"
        
    end 
end
choice=true

menu_choice = prompt.select('What would you like to do?', ["Login","Signup"])
    if menu_choice === "Login"

        while choice do
            user_name=prompt.ask("Name: ")
            userlist=option.all.select{|person| person.name.downcase===user_name.downcase}
            
            if userlist.length>0
                user=userlist.first
                puts "#{user.name} has signed in."
                
                choice=false
            else
                puts "Username not found. Please try again."
            end
        end
    else
        while choice do
        user_name=prompt.ask("Please enter a username:")
        user=option.all.select{|person| person.name.downcase===user_name.downcase}
            
            if user.length>0
                puts "Sorry that username is already in use. Please try again."
                
            else
                puts "Welcome #{user_name}"
                choice=false
            end
        end
        choice=true
        
        user_income=prompt.ask("Please enter your annual income:").to_i
        user_address=prompt.ask("Please enter your address:")
        option.create(name: user_name, income: user_income, address: user_address)
        user=option.all.last
        puts "#{user.name} has signed in."
    end
    choice=true
    while choice do
        menu_choice = prompt.select('What would you like to do?', ["View list of available children","View list of my children","Change my income", "Change my address", "Care for a child"])
        if menu_choice === "View list of available children"
            user.available_children            
        elsif menu_choice === "View list of my children"
            user.my_kids.map{|kids| puts kids.child.name}
        elsif menu_choice === "Change my income"
            new_income=prompt.ask("Please enter a new income:")
            user.change_income(new_income)
        elsif menu_choice === "Change my address"
            new_address=prompt.ask("Please enter a new address:")
            user.change_address(new_address)
        elsif menu_choice ==="Care for a child"
            #need to list out kids and then have them as choices
            child_choice = prompt.select('Which would you like?',[user.obtainable_children])
            user.child_care(Child.all.select{|child| child.name==child_choice}.first)

        end
        continue = prompt.select('Would you like to go to main menu or exit?', ["Main Menu","Exit"])
        if continue == "Exit"
            choice=false
        end
    end



