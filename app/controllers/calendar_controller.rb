class CalendarController < ApplicationController
  
  def index
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = Event.event_strips_for_month(@shown_month)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:notice] = "Evento guardado exitosamente"
      redirect_to :calendar
    else
      flash[:alert] = "Ups! Hubo un error al guardar su informacion, intente nuevamente..."
      redirect_to :new_event
    end
  end

  def show
    @event = Event.find(params[:event_id])
  end
end
