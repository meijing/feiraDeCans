class LibroVisitaController < ApplicationController
  # GET /libro_visita
  # GET /libro_visita.xml
  def index
    @libro_visita = LibroVisitum.all
   
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @libro_visita }
    end
  end

  # GET /libro_visita/1
  # GET /libro_visita/1.xml
  def show
    @libro_visitum = LibroVisitum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @libro_visitum }
    end
  end

  # GET /libro_visita/new
  # GET /libro_visita/new.xml
  def new
    @libro_visitum = LibroVisitum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @libro_visitum }
    end
  end

  # GET /libro_visita/1/edit
  def edit
    @libro_visitum = LibroVisitum.find(params[:id])
  end

  # POST /libro_visita
  # POST /libro_visita.xml
  def create
    @libro_visitum = LibroVisitum.new(params[:libro_visitum])

    respond_to do |format|
      if @libro_visitum.save
        format.html { redirect_to(@libro_visitum, :notice => 'Libro visitum was successfully created.') }
        format.xml  { render :xml => @libro_visitum, :status => :created, :location => @libro_visitum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @libro_visitum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /libro_visita/1
  # PUT /libro_visita/1.xml
  def update
    @libro_visitum = LibroVisitum.find(params[:id])

    respond_to do |format|
      if @libro_visitum.update_attributes(params[:libro_visitum])
        format.html { redirect_to(@libro_visitum, :notice => 'Libro visitum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @libro_visitum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /libro_visita/1
  # DELETE /libro_visita/1.xml
  def destroy
    @libro_visitum = LibroVisitum.find(params[:id])
    @libro_visitum.destroy

    respond_to do |format|
      format.html { redirect_to(libro_visita_url) }
      format.xml  { head :ok }
    end
  end
end
