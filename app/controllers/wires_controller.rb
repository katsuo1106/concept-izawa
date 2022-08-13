class WiresController < ApplicationController
  
  def top
  end
  
  def index
    @wire = Wire.all
  end

  def new
    @wire = Wire.new
  end

  def create
    @wire = Wire.create(wire_params)
    if @wire.save
      wires_path
    else
      render :new
    end
  end

  private

  def wire_params
    params.require(:wire).permit(:hinban, :kei_id ,:iro_id ,:nagasa, :tanka)
  end
end
