class WiresController < ApplicationController
  
  def top
  end
  
  def index
    @wires = Wire.all
  end

  def new
    @wire = Wire.new
  end

  def create
    @wire = Wire.create(wire_params)
    if @wire.save
      redirect_to wires_path
    else
      render :new
    end
  end

  def show
    @wire = Wire.find(params[:id])
  end

  def edit
    @wire = Wire.find(params[:id])
  end

  def update
    @wire = Wire.find(params[:id])
    if @wire.update(chumon_params)
      redirect_to wires_path
    else
      render :edit
    end
  end

  private

  def wire_params
    params.require(:wire).permit(:hinban, :kei_id ,:iro_id ,:nagasa, :tanka, :chumon, :seisan, :husoku)
  end

  def chumon_params
    params.require(:wire).permit(:chumon)
  end
end
