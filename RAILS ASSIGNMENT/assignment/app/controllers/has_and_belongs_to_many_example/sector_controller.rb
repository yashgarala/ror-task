class HasAndBelongsToManyExample::SectorController < ApplicationController
    def index
        @sectors =Sector.all
    end
    def new
        @sector =Sector.new
    end
    def show

        @sector=Sector.find_by(id:params[:id]);
        
    end

    def add_new_industry
        @sector=Sector.find_by(id:params[:sector_id]);
        @industry=Industry.all;
    end
    
    def add_create_industry
        sector=Sector.find_by(id:params[:sector_id]);
        industry=Industry.find_by(id:params[:sector][:industry_id]);
        sector.industrys<<industry
        if(sector.save)
            redirect_to action: 'index'
        end
    end
    def create
        @sector=Sector.create(sector_param);
        if(@sector.save)
            redirect_to action: 'index'
        else    
            render 'new', status: :unprocessable_entity 
        end
    end
    def edit
        @sector=Sector.find_by(id:params[:id])

    end
    def update
        @sector=Sector.find_by(id:params[:id])
        @sector.update(sector_param)
        if(@sector.valid?)
            redirect_to action: 'index'
        else
            render 'edit', status: :unprocessable_entity 
        end
    end
    def destroy
        @temp=Sector.find_by(id:params[:id]);
        if(@temp!=nil)
            @temp.destroy
            redirect_to action: "index"
        end
    end
    private
    def sector_param
        params.require(:sector).permit(:name)
    end
    
end
