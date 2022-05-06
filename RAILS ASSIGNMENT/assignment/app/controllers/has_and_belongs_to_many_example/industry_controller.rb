class HasAndBelongsToManyExample::IndustryController < ApplicationController
    def index
        @industrys =Industry.all
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
    private
    def industry_param
        params.require(:industry).permit(:name,:email)
    end
    
end
