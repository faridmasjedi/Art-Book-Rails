class Art < ApplicationRecord
    
    def self.search(search)
        
        if (search[:form] && search[:form] != 'all')
            form_filter = "form='#{search[:form]}'"
        else
            form_filter = "form=form"
        end
        
        if (search[:name] && search[:name] != '')
            name_filter = "name='#{search[:name]}'"
        else
            name_filter = "name=name"
        end

        if (search[:artist] && search[:artist] != '')
            artist_filter = "artist='#{search[:artist]}'"
        else
            artist_filter = "artist=artist"
        end

        sql_query = "SELECT * FROM arts WHERE #{form_filter} AND #{name_filter} AND #{artist_filter};"
        
        Art.find_by_sql sql_query
    end   
end
