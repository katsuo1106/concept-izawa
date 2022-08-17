class WiresController < ApplicationController
  
  def concept
    @wires = Wire.all
  end
  
  def izawa
    @wires = Wire.all
  end

  def izawachumon
    @wire = Wire.find(params[:id])
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
    if @wire.update(wire_params)
      redirect_to izawa_path
    else
      render :edit
    end
  end

  def reset
    Wire.update_all(chumon: 0)
    redirect_to izawa_path
  end

  def ikkatsu
    @wire = Wire.update_all(chumon_params)
    redirect_to izawa_path
  end

  private

  def wire_params
    params.require(:wire).permit(:hinban, :kei_id ,:iro_id ,:nagasa, :tanka, :chumon, :seisan, :husoku)
  end
end
