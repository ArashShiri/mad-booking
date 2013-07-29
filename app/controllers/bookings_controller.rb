include BookingsHelper
class BookingsController < ApplicationController
  before_filter :format_schedule_write, :only => [:create,:update]

  
  # GET /bookings
  # GET /bookings.json
  def index
    sTime = Time.at(params[:start_date].to_i)
    eTime = Time.at(params[:end_date].to_i)
    @bookings = find_by_date_range(sTime,eTime)
    b = []
    @bookings.each do |booking|
      b.push(convert_booking_to_fcevent(booking))
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: b }
    end
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
    @booking = Booking.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @booking }
    end
  end

  # GET /bookings/new
  # GET /bookings/new.json
  def new
    @booking = Booking.new


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @booking }
    end
  end

  # GET /bookings/1/edit
  def edit
    @booking = Booking.find(params[:id])
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(params[:booking])

    
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render json: @booking, status: :created, location: @booking }
      else
        format.html { render action: "new" }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bookings/1
  # PUT /bookings/1.json
  def update
    params[:booking][:equipment_ids] ||= []
    @booking = Booking.find(params[:id])

    respond_to do |format|
      if @booking.update_attributes(params[:booking])
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    respond_to do |format|
      format.html { redirect_to bookings_url }
      format.json { head :no_content }
    end
  end
  
private
  
  def format_schedule_write
    s = IceCube::Schedule.new(Time.now)
    
    #Schedule start and end dates and times
    #Dates ("07/29/2013")
    start_s = params.delete(:schedule_start)
    end_s = params.delete(:schedule_end)
    #Times ("01:00 PM")
    start_t = params.delete(:schedule_start_time)
    end_t = params.delete(:schedule_end_time) 

    #Stitch together the strings and parse them
    start_d = DateTime.strptime(start_s + start_t, "%m/%d/%Y%I:%M %p");
    end_d = DateTime.strptime(end_s + end_t, "%m/%d/%Y%I:%M %p");
    s.start_time = start_d
    s.end_time = end_d
    
    params[:booking].merge!({:schedule => s.to_yaml()})
  end
  
end
