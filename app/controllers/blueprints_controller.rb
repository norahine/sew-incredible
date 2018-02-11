class BlueprintsController < ApplicationController
	before_action :authenticate_user!

	def index
		# @blueprints = Blueprint.all
		@blueprints = current_user.blueprints
	end

	def show
		# @blueprint = Blueprint.find(params[:id])
		@blueprint = current_user.blueprints.find(params[:id])
	end

	def new
		# @blueprint = Blueprint.new
		# http://guides.rubyonrails.org/association_basics.html
		@blueprint = current_user.blueprints.build
	end

	def edit
		# @blueprint = Blueprint.find(params[:id])
		@blueprint = current_user.blueprints.find(params[:id])
	end

	def create
		@blueprint = current_user.blueprints.build(blueprint_params)

		if @blueprint.save
			redirect_to @blueprint
		else
			render "new"
		end
	end

	def update
		@blueprint = current_user.blueprints.find(params[:id])

		if @blueprint.update(blueprint_params)
			redirect_to @blueprint
		else
			render "edit"
		end
	end

	def destroy
  	@blueprint = current_user.blueprints.find(params[:id])
  	@blueprint.destroy

  	redirect_to blueprints_path
	end


	private
		def blueprint_params
			params.require(:blueprint).permit(:title, :fabric_type, :fabric_length, :instructions, :additional_comments)
		end
end
