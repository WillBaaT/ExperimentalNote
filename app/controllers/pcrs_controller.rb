class PcrsController < ApplicationController
  def index
  	@gene = Gene.all
  	@pcr = Pcr.all
  	#if @gene.nil?
  	#	redirect_to pcr_path
  	#end
  end
  def new
  	@gene = Gene.new
  	@pcr = Pcr.new
  end
  def create
  	@gene = Gene.new(gene_params)
	if @gene.save
		redirect_to pcrs_path
	else
		render pcr_path
	end
  end
  def show
  	
  end
  def edit
  	
  end
  def update
  	
  end
  def delete
  	
  end

  private
  def gene_params
  	params.require(:gene).permit(
  		:species,
  		:number,
  		:name,
  		:size,
  		:pcr_attributes => [
  			:id,
        :fragment_name,
	  		:product_size,
		  	:final_vector,
		  	:machine,
		  	:enzyme,
		  	:break,
		  	:break_t,
		  	:denature,
		  	:denature_t,
		  	:annealing,
		  	:annealing_t,
		  	:elongation,
		  	:elongation_t,
		  	:polya,
		  	:polya_t,
		  	:cycles,
		  	:_destroy]
	)
  end
end