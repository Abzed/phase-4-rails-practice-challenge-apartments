class LeasesController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :error_handling

    def error_handling
        render json: {error: invalid.record.errors}, status: :unprocessable_entity
    end
    def create
        lease = Lease.create!(lease_params)
        render json: lease, status: :created
    end

    def destroy
        lease = Lease.find_by(id: params[:id])
        if lease
            lease.destroy
            head :no_content
            # render json: {error: "lease not found"}
        else
            render json: {error: "lease not found"}
        end
    end

    private

    def lease_params
        params.permit(:rent, :apartment_id, :tenant_id)
    end
end
