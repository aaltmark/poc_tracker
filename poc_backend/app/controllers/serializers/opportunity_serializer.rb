class OpportunitySerializer < ActiveModel::Serializer 
    attributes :id, account_name, :account_executive, :business_type, :network_id, :url, :tag_implementation_method, :noJS, :average_daily_clicks

    def stages 
        self.object.stages.map do |stage| 
            {
                name: stage.name 
            }
        end 
    end

    def platforms 
        self.object.platforms.map do |platform| 
            {
                name: platform.name,
                image: platform.image 
            }
        end 
    end 
end 