class PcrsController < ApplicationController
  def index
  	@gene = Gene.all
  	@pcr = Pcr.all
  end
  def pcr #index
  	@gene = Gene.new
  	@pcr = Pcr.new
  	#if Gene == nil
	#		redirect_to 'pcr/all'
	#	else
	#		redirect_to 'pcr'
	#	end
  end
  def create
  	@gene = Gene.new(gene_params)
  	@pcr = Pcr.new(pcr_params)
	if @gene.save && @pcr.save
		redirect_to "pcr/all"
	else
		render "pcr"
	end
  end
  def show
  	
  end

  private
  def gene_params
  	params.require(:gene).permit(:number, :name)
  end
  def pcr_params
  	params.require(:pcr).permit(
  		:fragment_name,
  		:product_size,
  		:final_vector,
  		:machine,
  		:enzyme,
  		:break,
  		:denature,
  		:annealing,
  		:elongation,
  		:polya,
  		:cycles)
  end
end