class WiresController < ApplicationController
  
  def concept
    @wires = Wire.all.order(:hinban)
  end
  
  def izawa
    @wires = Wire.all.order(:hinban)
  end

  def izawachumon
    @wire = Wire.find(params[:id])
    @wire.chumon = []
  end

  def conceptzaiko
    @wire = Wire.find(params[:id])
    @wire.zaiko = []
  end

  def new
    @wire = Wire.new
  end

  def create
    @wire = Wire.create(wire_params)
    if @wire.save
      redirect_to izawa_path
    else
      render :new
    end
  end

  def update
    @wire = Wire.find(params[:id])
     @wire.update(wire_params)
      @wire.zaiko = @wire.zaiko - @wire.chumon
      @wire.zaikolog = @wire.zaiko
      @wire.save
       redirect_to izawa_path    
  end

  def show
    @wire = Wire.find(params[:id])
  end

  def edit
    @wire = Wire.find(params[:id])
  end

  def update2 
    @wire = Wire.find(params[:id])
    @wire.update(wire_params)
    @wire.zaiko = @wire.zaikolog + @wire.zaiko
    @wire.zaikolog = @wire.zaiko
    @wire.save
      redirect_to root_path

    end
  

  def reset
    Wire.update_all(chumon: 0)
    redirect_to izawa_path
  end

  private

  def wire_params
    params.require(:wire).permit(:hinban, :kei_id ,:iro_id ,:nagasa, :tanka, :chumon, :chumonlog, :zaiko, :zaikolog)
  end
end