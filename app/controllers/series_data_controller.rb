class SeriesDataController < ApplicationController

    def index
        @data=SeriesDatum.all
        render json: @data
    end
    def create
        @seriesdata=SeriesDatum.create(s_params)
        render json: @seriesdata
    end
    def show
        @item=SeriesDatum.find(params[:id])
        render json: @item
    end
    def update
        @item=SeriesDatum.find(params[:id])
        @item.update(s_params)
    end
    def search
        @item=SeriesDatum.find_by(name: params[:name])
        render json: @item
        
    end

    def quiz
        item=SeriesDatum.find_by(name: params[:name])
            unless item
                render json: "Enter correct name"
            else
        if item.fav_char==params[:fav_char]
            render json: "You are correct"
        else
            render json: "You know nothing"
        end
    end
    end

    private
    def s_params
        params.permit(:name,:fav_char)
    end
end
