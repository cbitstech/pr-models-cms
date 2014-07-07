class TreesController < ApplicationController

	def new
  	@tree = Tree.new
	end

	def create
		@tree = Tree.new(tree_params)
	
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
		
		def upload
		  post = Tree_File.save(params[:upload])
		  render :text => "File has been uploaded successfully"
		end
	end

	def upload
		uploaded_io = params[:tree][:tree_file]
		File.open(Rails.root.join('models', 'uploads', uploaded_io.original_filename), 'wb') do |file|
		  file.write(uploaded_io.read)
		end
	end

	def update
	@tree = Tree.find(params[:id])

    respond_to do |format|
      if @tree.update(tree_params)
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
	end

	private
		def tree_params
			params.require(:tree).permit(:author, :tree_amount, :note, :parser, :pr_id, :model_type, :accuracy)
		end
end

