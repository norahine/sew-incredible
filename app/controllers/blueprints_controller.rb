class BlueprintsController < ApplicationController
	def index
		@blueprints = Blueprint.all
	end

	def show
		@blueprint = Blueprint.find(params[:id])
	end

	def new
		@blueprint = Blueprint.new
	end

	def edit
		@blueprint = Blueprint.find(params[:id])
	end

	def create
		@blueprint = Blueprint.new(blueprint_params)

		if @blueprint.save
			redirect_to @blueprint
		else
			render "new"
		end
	end

	def update
		@blueprint = Blueprint.find(params[:id])

		if @blueprint.update(blueprint_params)
			redirect_to @blueprint
		else
			render 'edit'
		end
	end

	def destroy
  	@blueprint = Blueprint.find(params[:id])
  	@blueprint.destroy

  	redirect_to blueprints_path
	end


	private

	def blueprint_params
		params.require(:blueprint).permit(:title, :fabric_type, :fabric_length, :instructions, :additional_comments)
	end
end
