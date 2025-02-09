class TenantsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :error_handling

    def error_handling
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end

    def index
        render json: Tenant.all, status: :ok
    end
    
    def show
        tenant = Tenant.find_by(id: params[:id])

        if tenant
            render json: tenant
        else
            render json: {error: "Not found!"}
        end
    end

    def create
        tenant = Tenant.create!(tenant_params)
        render json: tenant, status: :created
    end

    def update
        tenant = Tenant.find_by(id: params[:id])
        
        if tenant
            tenant.update(tenant_params)
            render json: tenant, status: :accepted
        else
            render json: {error: "tenant not found"}
        end
    end

    def destroy
        tenant = Tenant.find_by(id: params[:id])
        if tenant
            tenant.destroy
            head :no_content
            # render json: {error: "tenant not found"}
        else
            render json: {error: "tenant not found"}
        end
    end
    

    private

    def tenant_params
        params.permit(:name, :age)
    end
end
