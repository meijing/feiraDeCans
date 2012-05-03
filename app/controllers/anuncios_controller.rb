class AnunciosController < ApplicationController
  # GET /anuncios
  # GET /anuncios.xml
  def index
    @anuncios = Anuncio.paginate(:page => params[:page], :per_page => 10 )
 
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /anuncios/1
  # GET /anuncios/1.xml
  def show
    @anuncio = Anuncio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @anuncio }
    end
  end

  # GET /anuncios/new
  # GET /anuncios/new.xml
  def new
    
    @anuncio = Anuncio.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @anuncio }
    end
  end

  # GET /anuncios/1/edit
  def edit
    @anuncio = Anuncio.find(params[:id])
  end

  # POST /anuncios
  # POST /anuncios.xml
  def create
    @anuncio = Anuncio.new(params[:anuncio])

    respond_to do |format|
      if @anuncio.save
   #     AnuncioMailer.enviar_anuncio(@anuncio).deliver
        format.html { redirect_to(anuncios_path, :notice => 'O anuncio foi enviado o noso correo. En breve revisaremolo e publicaremolo na web.') }
        format.xml  { render :xml => @anuncio, :status => :created, :location => @anuncio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @anuncio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /anuncios/1
  # PUT /anuncios/1.xml
  def update
    @anuncio = Anuncio.find(params[:id])

    respond_to do |format|
      if @anuncio.update_attributes(params[:anuncio])
        format.html { redirect_to(@anuncio, :notice => 'Anuncio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @anuncio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /anuncios/1
  # DELETE /anuncios/1.xml
  def destroy
    @anuncio = Anuncio.find(params[:id])
    @anuncio.destroy

    respond_to do |format|
      format.html { redirect_to(anuncios_url) }
      format.xml  { head :ok }
    end
  end
end
