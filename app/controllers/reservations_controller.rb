class ReservationsController < ApplicationController
   def index 
      @reservations = Reservation.all
   end
   
   def show 
      @reservation = Reservation.find(params[:id])
   end

   def new 
      @reservation = Reservation.new
   end

   def create 

      @reservation = Reservation.create(reservation_params)
      
      if @reservation.save
            flash[:success]  = "Reservation successfully created!" 
            redirect_to reservations_path
      else
            flash[:error] =  "Error saving the reservation."   
            redirect_to :new
      end
   end

   def edit 
      @reservation = Reservation.find(params[:id])
   end

   def update 
      @reservation = Reservation.find(params[:id])
      @reservation.update(reservation_params)

      if @reservation.save
            flash[:success]  = "Reservation successfully updated!"
            redirect_to @reservation 
      else
            flash[:error] =  "Error saving the reservation."   
            render :edit
      end
   end

   def destroy 
      Reservation.find(params[:id]).destroy
      redirect_to reservations_path
   end

   def destroy_all
      Reservation.all.delete_all
      redirect_to reservations_path
   end

   private
      def reservation_params
         params.require(:reservation).permit(:name, :guestNumber, :datetime, :phone, :email)
      end
end
