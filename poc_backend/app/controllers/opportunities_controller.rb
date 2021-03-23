class OpportunitiesController < ApplicationController 
    def index 
        opportunities = Opportunity.all 
        render json: opportunities 
    end

    def show 
        opportunity = Opportunity.find_by(id: params[:id])
        render json: {review: OpportunitySerializer.new(opportunity)}
    end 

    def create 
        @opportunity = Opportunity.create(opportunity_params)
        # byebug
        if @review.valid? 
            render json: { review: OpportunitySerializer.new(@opportunity) }, status: :created 
        else 
            render json: { error: 'Please fill out all required fields.' }, status: :not_acceptable
        end
    end

    def update 
        opportunity = Opportunity.find_by(id: params[:id])
        opportunity.update(opportunity_params) 
        if opportunity.valid?
            render json: opportunity 
        else 
            render json: { error: 'Please fill out all required fields.' }
        end 
    end 

    def destroy 
        opportunity = Opportunity.find_by(id: params[:id])
        opportunity.destroy 
        render json: { message: 'opportunity has been deleted'}
    end 
 
    private
    def opportunity_params
        params.require(:opportunity).permit(:account_name, :account_executive, :business_type, :network_id, :url, :tag_implementation_method, :noJS, :average_daily_clicks)
    end
end 