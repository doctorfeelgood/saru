class BusEntriesController < ApplicationController
  # GET /bus_entries
  # GET /bus_entries.json
  def index
    @bus_entries = BusEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bus_entries }
    end
  end

  # GET /bus_entries/1
  # GET /bus_entries/1.json
  def show
    @bus_entry = BusEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bus_entry }
    end
  end

  # GET /bus_entries/new
  # GET /bus_entries/new.json
  def new
    @bus_entry = BusEntry.new
    @fares = Fare.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bus_entry }
    end
  end

  # GET /bus_entries/1/edit
  def edit
    @bus_entry = BusEntry.find(params[:id])
  end

  # POST /bus_entries
  # POST /bus_entries.json
  def create
    @bus_entry = BusEntry.new(params[:bus_entry])

    respond_to do |format|
      if @bus_entry.save
        format.html { redirect_to @bus_entry, notice: 'Bus entry was successfully created.' }
        format.json { render json: @bus_entry, status: :created, location: @bus_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @bus_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bus_entries/1
  # PUT /bus_entries/1.json
  def update
    @bus_entry = BusEntry.find(params[:id])

    respond_to do |format|
      if @bus_entry.update_attributes(params[:bus_entry])
        format.html { redirect_to @bus_entry, notice: 'Bus entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bus_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_entries/1
  # DELETE /bus_entries/1.json
  def destroy
    @bus_entry = BusEntry.find(params[:id])
    @bus_entry.destroy

    respond_to do |format|
      format.html { redirect_to bus_entries_url }
      format.json { head :no_content }
    end
  end
end
