class CalendarController < ApplicationController
  
  def index
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = current_user.events.event_strips_for_month(@shown_month)
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(params[:event].merge(:done => false))
    if @event.save
      flash[:notice] = "Evento guardado exitosamente"
      redirect_to :calendar
    else
      flash[:alert] = "Ups! Hubo un error al guardar su informacion, intente nuevamente..."
      redirect_to :new_event
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def list
    if user_signed_in?
      @events = Event.today(current_user)
    end
  end

  def finish_event
    @event = Event.find(params[:id])
    @event.done = true
    if @event.save
      flash[:notice] = "Tarea terminada"
      redirect_to :calendar
    else
      flash[:alert] = "Ups... Algo salio mal..."
    end
  end

  respond_to  :json
  def event_now
    if user_signed_in?
      @events = Event.today(current_user)
      @notification = false
      unless @events.empty?
        @notification = true
      end
      respond_with @notification
    end
  end
end
