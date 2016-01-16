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
    @gene.pcrs.build #build a blank pcrs form
  end
 
  def create
    # if Gene.find_by_name(params[:gene][:name]) 
    #   params[:pcrs][:gene_id] = Gene.find(Gene.find_by_name(params[:gene][:name]).id)
    #    @gene = Gene.find(Gene.find_by_name(params[:gene][:name]).id)
    # else
    #   @gene = Gene.new(gene_params)
    # end
    if @gene.save
    redirect_to pcrs_path
    else
    render new_pcr_path
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
      :id,
      :species,
      :number,
      :name,
      :size,
  		:pcrs_attributes => [
      :gene_id,
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