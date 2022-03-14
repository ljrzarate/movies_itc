class Api::PersonsController < ApplicationController
  before_action :set_person, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, only: %i[ update create destroy ]

  def index
    @persons = User.all
  end

  def show
  end

  def create
    @person = User.new(person_params)

    respond_to do |format|
      if @person.save
        format.json do
          render partial: "api/persons/person", locals: {person: @person}, status: :created
        end
      else
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @person.update(person_params)
        format.json do
          render partial: "api/persons/person", locals: {person: @person}, status: :ok
        end
      else
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @person.destroy

    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    def set_person
      @person = User.find_by_id(params[:id])
      respond_to do |format|
        format.json { render json: {message: "Not found"}, status: :unprocessable_entity } if @person.blank?
      end
    end

    def person_params
      params.require(:person).permit(:first_name, :last_name, aliases: [])
    end
end
