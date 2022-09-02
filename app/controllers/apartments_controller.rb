class ApartmentsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :error_handling
    def error_handling
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end

    def index
        render json: Apartment.all, status: :ok
    end
    
    def show
        apartment = Apartment.find_by(id: params[:id])

        if apartment
            render json: apartment
        else
            render json: {error: "Not found!"}
        end
    end

    def create
        apartment = Apartment.create!(apartment_params)
        render json: apartment, status: :created
    end

    def update
        apartment = Apartment.find_by(id: params[:id])
        
        if apartment
            apartment.update(apartment_params)
            render json: apartment, status: :accepted
        else
            render json: {error: "Apartment not found"}
        end
    end

    def destroy
        apartment = Apartment.find_by(id: params[:id])
        if apartment
            apartment.destroy
            head :no_content
            # render json: {error: "apartment not found"}
        else
            render json: {error: "apartment not found"}
        end
    end
    

    private

    def apartment_params
        params.permit(:number, :tenant_id)
    end
end
