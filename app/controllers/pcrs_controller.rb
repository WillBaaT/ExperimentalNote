class PcrsController < ApplicationController
  def index
  	@gene = Gene.all
  	@pcr = Pcr.all
  	# if Gene.first.nil?
  	# 	redirect_to new_pcr_path
  	# end
  end

  def new
    @pcr = Pcr.new
    @pcr.build_gene #build a blank pcrs form
  end
 
  def create
    @pcr = Pcr.new(pcr_params)
    if  Gene.find_by_name(@pcr.gene.name)
      @pcr.gene = Gene.find(Gene.find_by_name(@pcr.gene.name).id)
      @pcr.save
    end
    if @pcr.save
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
  def pcr_params
      params.require(:pcr).permit(
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
      :gene_attributes => [
      :id,
      :species,
      :number,
      :name,
      :size,
      :_destroy]
  )
  end
 #  def gene_params
 #  	params.require(:gene).permit(
 #      :id,
 #      :species,
 #      :number,
 #      :name,
 #      :size,
 #  		:pcrs_attributes => [
 #      :gene_id,
 #      :fragment_name, 
 #      :product_size,
 #      :final_vector,
 #      :machine,
 #      :enzyme,
 #      :break,
 #      :break_t,
 #      :denature,
 #      :denature_t,
 #      :annealing,
 #      :annealing_t,
 #      :elongation,
 #      :elongation_t,
 #      :polya,
 #      :polya_t,
 #      :cycles,
 #      :_destroy]
	# )
 #  end
end