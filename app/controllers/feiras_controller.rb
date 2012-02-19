class FeirasController < ApplicationController
  # GET /feiras
  # GET /feiras.xml
  def index
    @feiras = Feira.all

    respond_to do |format|
      format.html # listFeiras.html.erb
      format.xml  { render :xml => @feiras }
    end
  end

  # GET /feiras/1
  # GET /feiras/1.xml
  def show
    @feira = Feira.find(params[:id])
    @archivos = Dir.pwd+"/public/images/"+@feira.nome
    #Dir.chdir("../.")
    #@archivos = Dir.glob("*")
    @archivos = Dir.getwd+"/public/images/"+@feira.nome+"/"
    @archivos = Dir.glob(@archivos+"*")
    @nomeImaxes = Array.new
    @contador = 0
    @archivos.each do |imaxe|
      @nomeTokens = imaxe.split("/")
      @nomeImaxes[@contador] = @nomeTokens[@nomeTokens.length-2]+"/"+@nomeTokens[@nomeTokens.length-1]
      @contador = @contador +1
    end
    @feiras = Feira.all
    respond_to do |format|
      format.html  #show.html.erb
      format.xml  { render :xml => [@nomeImaxes,@feiras, @feira]  }
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

  def listFeiras
    @feiras = Feira.all

    respond_to do |format|
      format.html # listFeiras.html.erb
      format.xml  { render :xml => @feiras }
    end
  end

  def campeonato
    @feiras = Feira.all

    respond_to do |format|
      format.html # campeonato.html.erb
      format.xml  { render :xml => @feiras }
    end
  end
end
