class FeirasController < ApplicationController
  # GET /feiras
  # GET /feiras.xml
  def index
    @feiras = Feira.all

    respond_to do |format|
      format.html # proximaFeira.html.erb
      format.xml  { render :xml => @feiras }
    end
  end

  # GET /feiras/1
  # GET /feiras/1.xml
  def show
    require 'iconv'
    @idFeira = Feira.find_by_nome(params[:id])
    #@feira = Feira.find(params[:id])
    @feira = Feira.find_by_nome(params[:id])
    #@archivos = Dir.pwd+"/public/images/"
    #Dir.chdir("../.")
    #@archivos = Dir.glob("*")
    @archivos = Dir.getwd+"/public/images/"
    @nomeFeira = @feira.nome.tr(' ','_')
    @archivos = Dir.glob(@archivos+@nomeFeira+"_de_cans_*.jpg")
    @nomeImaxes = Array.new
    @contador = 0
    @archivos.each do |imaxe|
      @nomeTokens = imaxe.split("/")
      @nomeImaxes[@contador] = @nomeTokens[@nomeTokens.length-1]
      @contador = @contador +1
    end

    @nomeImaxes = @nomeImaxes.sort()
    @feiras = Feira.all
    respond_to do |format|
      format.html  #show.html.erb
    end
  end

  # GET /feiras/new
  # GET /feiras/new.xml
  def new
    @feira = Feira.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feira }
    end
  end

  # GET /feiras/1/edit
  def edit
    @feira = Feira.find(params[:id])
  end

  # POST /feiras
  # POST /feiras.xml
  def create
    @feira = Feira.new(params[:feira])

    respond_to do |format|
      if @feira.save
        format.html { redirect_to(@feira, :notice => 'Feira was successfully created.') }
        format.xml  { render :xml => @feira, :status => :created, :location => @feira }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feira.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feiras/1
  # PUT /feiras/1.xml
  def update
    @feira = Feira.find(params[:id])

    respond_to do |format|
      if @feira.update_attributes(params[:feira])
        format.html { redirect_to(@feira, :notice => 'Feira was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feira.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feiras/1
  # DELETE /feiras/1.xml
  def destroy
    @feira = Feira.find(params[:id])
    @feira.destroy

    respond_to do |format|
      format.html { redirect_to(feiras_url) }
      format.xml  { head :ok }
    end
  end

  def proximaFeira
    @feiras = Feira.all

    respond_to do |format|
      format.html # proximaFeira.html.erb
      format.xml  { render :xml => @feiras }
    end
  end

  def campeonato
    @feiras = Feira.all
    @archivos = Dir.getwd+"/public/images/"
    @archivos = Dir.glob(@archivos+"Campeonato_provincial_de_raposo_*.jpg")
    @nomeImaxes = Array.new
    @contador = 0
    @archivos.each do |imaxe|
      @nomeTokens = imaxe.split("/")
      @nomeImaxes[@contador] = @nomeTokens[@nomeTokens.length-1]
      @contador = @contador +1
    end

    @nomeImaxes = @nomeImaxes.sort()
    respond_to do |format|
      format.html # campeonato.html.erb
    end
  end

   def campionato_tiro_con_arco
    @feiras = Feira.all
    @archivos = Dir.getwd+"/public/images/"
    @archivos = Dir.glob(@archivos+"tiro_con_arco_*.jpg")
    @nomeImaxes = Array.new
    @contador = 0
    @archivos.each do |imaxe|
      @nomeTokens = imaxe.split("/")
      @nomeImaxes[@contador] = @nomeTokens[@nomeTokens.length-1]
      @contador = @contador +1
    end

    @nomeImaxes = @nomeImaxes.sort()
    respond_to do |format|
      format.html # campeonato.html.erb
    end
  end

  def contacto

    respond_to do |format|
      format.html # contacto.html.erb
      format.xml  { render :xml }
    end
  end

  def programa
    @feiras = Feira.all
    respond_to do |format|
      format.html # programa.html.erb
    end
  end

  def videos
    respond_to do |format|
      format.html # videos.html.erb
    end
  end

  def aves_de_cetreria
    @feiras = Feira.all
    @archivos = Dir.getwd+"/public/images/"
    @archivos = Dir.glob(@archivos+"Aves_de_cetreria_*.jpg")
    @nomeImaxes = Array.new
    @contador = 0
    @archivos.each do |imaxe|
      @nomeTokens = imaxe.split("/")
      @nomeImaxes[@contador] = @nomeTokens[@nomeTokens.length-1]
      @contador = @contador +1
    end

    @nomeImaxes = @nomeImaxes.sort()
    respond_to do |format|
      format.html # campeonato.html.erb
    end
  end
end