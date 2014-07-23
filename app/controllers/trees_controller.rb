class TreesController < ApplicationController
 
  protect_from_forgery with: :null_session

  # snipped for brevity

	def new
  	@tree = Tree.new
	end

	def create
		@tree = Tree.create(tree_params)

		respond_to do |format|
			if @tree.save
				format.html{redirect_to @tree}
				format.json{render :json => @tree, :status => :created, :location => @tree }
			else
				format.html { render 'new' }
				format.json { render json: @tree.errors, status: :unprocessable_entity }
			end
		end
	end

	def index
		@trees = Tree.all
	end

	def edit
		@tree = Tree.find(params[:id])
	end

	def update
	@tree = Tree.find(params[:id])

    respond_to do |format|
      if @tree.update(tree_params)
				@tree.file = params[:tree][:file]
        format.html { redirect_to @tree}
        format.json { head :no_content }
      else
        format.html { render 'edit' }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
		end
	end

	def show
		@tree = Tree.find(params[:id])
		if @tree.file.exists? == true
			@tree.model = File.read(@tree.file.path)
		end
	end

	private
		def tree_params
			params.require(:tree).permit(:author, :tree_amount, :note, :parser, 
																		:pr_id, :model_type, :accuracy, :file, :model)
		end
end

