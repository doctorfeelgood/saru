class BusEntryVouchersController < ApplicationController
  # GET /bus_entry_vouchers
  # GET /bus_entry_vouchers.json
  def index
    @bus_entry_vouchers = BusEntryVoucher.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bus_entry_vouchers }
    end
  end

  # GET /bus_entry_vouchers/1
  # GET /bus_entry_vouchers/1.json
  def show
    @bus_entry_voucher = BusEntryVoucher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bus_entry_voucher }
    end
  end

  # GET /bus_entry_vouchers/new
  # GET /bus_entry_vouchers/new.json
  def new
    @bus_entry_voucher = BusEntryVoucher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bus_entry_voucher }
    end
  end

  # GET /bus_entry_vouchers/1/edit
  def edit
    @bus_entry_voucher = BusEntryVoucher.find(params[:id])
  end

  # POST /bus_entry_vouchers
  # POST /bus_entry_vouchers.json
  def create
    @bus_entry_voucher = BusEntryVoucher.new(params[:bus_entry_voucher])

    respond_to do |format|
      if @bus_entry_voucher.save
        format.html { redirect_to @bus_entry_voucher, notice: 'Bus entry voucher was successfully created.' }
        format.json { render json: @bus_entry_voucher, status: :created, location: @bus_entry_voucher }
      else
        format.html { render action: "new" }
        format.json { render json: @bus_entry_voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bus_entry_vouchers/1
  # PUT /bus_entry_vouchers/1.json
  def update
    @bus_entry_voucher = BusEntryVoucher.find(params[:id])

    respond_to do |format|
      if @bus_entry_voucher.update_attributes(params[:bus_entry_voucher])
        format.html { redirect_to @bus_entry_voucher, notice: 'Bus entry voucher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bus_entry_voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bus_entry_vouchers/1
  # DELETE /bus_entry_vouchers/1.json
  def destroy
    @bus_entry_voucher = BusEntryVoucher.find(params[:id])
    @bus_entry_voucher.destroy

    respond_to do |format|
      format.html { redirect_to bus_entry_vouchers_url }
      format.json { head :no_content }
    end
  end
end
