class ClientsController < ApplicationController
before_action :find_client, only: [:show, :update]

    def show
        render json: @client, serializer: TotalMembershipsSerializer
    end

    def update
@client.update(client_params)
render json: @client
    end

    private
    def find_client
@client = Client.find(params[:id])
    end

    def client_params
params.permit(:name, :age)
    end
end
