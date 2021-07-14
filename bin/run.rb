require_relative '../config/environment'
prompt = TTY::Prompt.new

current_user=nil
choice=true



while choice do
    name_response = prompt.ask("would you like to Adopt or Foster?")
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
            user=option.all.select{|person| person.name.downcase===user_name.downcase}
            
            if user.length>0
                puts "#{user.first.name} has signed in."
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

    menu_choice = prompt.select('What would you like to do?', ["View list of available children","View list of my children","Change my income", "Change my address"])
        if menu_choice === "View list of available children"
            
        elsif menu_choice === "View List of my children"
        elsif menu_choice === "Change my income"
        elsif menu_choice === "Change my address"
        end



