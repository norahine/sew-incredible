class BlueprintsController < ApplicationController
	before_action :authenticate_user!
	before_action :load_user_blueprint, only: [:show, :edit, :update, :destroy]

	def index
		@blueprints = current_user.blueprints
	end

	def show
	end

	def new
		@blueprint = current_user.blueprints.build
	end

	def edit
	end

	def create
		@blueprint = current_user.blueprints.build(blueprint_params)

		if @blueprint.save
			redirect_to @blueprint, flash: { success: t(:blueprint_created) }
		else
			render "new"
		end
	end

	def update
		if @blueprint.update(blueprint_params)
			redirect_to @blueprint
		else
			render "edit"
		end
	end

	def destroy
  	@blueprint.destroy

  	redirect_to blueprints_path
	end


	private
		def blueprint_params
			params.require(:blueprint).permit(:title, :fabric_type, :fabric_length, :instructions, :additional_comments)
		end

		def load_user_blueprint
			@blueprint = current_user.blueprints.find(params[:id])
		end
end
