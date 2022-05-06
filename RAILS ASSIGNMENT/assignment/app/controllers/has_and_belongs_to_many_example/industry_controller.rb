class HasAndBelongsToManyExample::IndustryController < ApplicationController
    def index
        @industrys =Industry.all
        if(@industrys.size()<10)
            add_industry
        end
    end
    def new
        @industry =Industry.new
    end

    def add_new_sector
        @industry=Industry.find_by(id:params[:industry_id]);
        @sector=Sector.all;
    end
    
    def add_create_sector
        industry=Industry.find_by(id:params[:industry_id]);
        sector=Sector.find_by(id:params[:industry][:sector_id]);
        industry.sectors<<sector
        if(industry.save)
            redirect_to action: 'index'
        end
    end
    
    def show
        @industry=Industry.find_by(id:params[:id]);
        if(@industry.sectors.size()<10)
            add_sector(@industry)
        end
    end
    def create
        @industry=Industry.create(industry_param);
        if( @industry.save)
            redirect_to action: 'index'
        else    
            render 'new', status: :unprocessable_entity 
        end
    end
    def edit
        @industry=Industry.find_by(id:params[:id])

    end
    def update
        @industry=Industry.find_by(id:params[:id])
        @industry.update(industry_param)
        if(@industry.valid?)
            redirect_to action: 'index'
        else
            render 'edit', status: :unprocessable_entity 
        end
    end
    def destroy
        @temp=Industry.find_by(id:params[:id]);
        if(@temp!=nil)
            @temp.destroy
            redirect_to action: "index"
        end
    end
    def delete_connection
        industry= Industry.find_by(id:params[:industry_id])
        sector = industry.sectors.where(id:params[:sector_id]).all
        if sector
            industry.sectors.delete(sector)
            redirect_to has_and_belongs_to_many_example_industry_path(industry)
        end
     end
    private
    def industry_param
        params.require(:industry).permit(:name,:email)
    end
    def add_sector(industry)
        sector=Sector.all
        for value in (1..10) do
            begin     
            x=sector.sample
            
            industry.sectors<<x
            rescue => exception
               p exception
                next 

            end
        end
    end
    def add_industry
        for value in (1..30) do
            begin
                
            x=Industry.create(name:Faker::IndustrySegments.industry,email:Faker::Internet.email)
                
            rescue => exception
               next 
            end
        end
    end 
end
