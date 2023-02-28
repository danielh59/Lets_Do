module DoersHelper
    
    def need_profile_name(name)
        if name == 'John Doe'
            "Can't Spell John Doe Without Do! Edit Profile to Personalize Homepage!"
        else
            "<% name %>"
        end
    end

end
