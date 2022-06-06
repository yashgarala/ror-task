class HasAndBelongsToManyExample::SectorController < ApplicationController
    def index
        @sectors =Sector.all
        if(@sectors.size()<10)
            add_sector
        end
    end
    def new
        @sector =Sector.new
    end
    def show

        @sector=Sector.find_by(id:params[:id]);
        if(@sector.industrys.size()<10)
            add_industry( @sector)
        end
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
    def delete_connection
        
        sector = Sector.find_by(id:params[:sector_id])
        industry= sector.industrys.where(id:params[:industry_id]).all
        if industry
            p industry
            sector.industrys.delete(industry)
            redirect_to has_and_belongs_to_many_example_sector_path(sector)
        end
   
     end
    private
    def sector_param
        params.require(:sector).permit(:name)
    end

    def add_sector
        for value in (1..10) do
            begin
    
            x=Sector.create(name:Faker::Job.field)
                
            rescue => exception
               next 
            end
        end
    end 
    def add_industry(sector)

        industrys=Industry.all
        for value in (1..10) do
            begin     
            x=industrys.sample
            
            sector.industrys<<x
            rescue => exception
               p exception
                next 

            end
        end
    end 
    
end
