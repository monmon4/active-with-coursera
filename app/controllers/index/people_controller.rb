class Index::PeopleController < ApplicationController
  before_action :set_index_person, only: [:show, :edit, :update, :destroy]

  # GET /index/people
  # GET /index/people.json
  def index
    @index_people = Index::Person.all
  end

  # GET /index/people/1
  # GET /index/people/1.json
  def show
  end

  # GET /index/people/new
  def new
    @index_person = Index::Person.new
  end

  # GET /index/people/1/edit
  def edit
  end

  # POST /index/people
  # POST /index/people.json
  def create
    @index_person = Index::Person.new(index_person_params)

    respond_to do |format|
      if @index_person.save
        format.html { redirect_to @index_person, notice: 'Person was successfully created.' }
        format.json { render :show, status: :created, location: @index_person }
      else
        format.html { render :new }
        format.json { render json: @index_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /index/people/1
  # PATCH/PUT /index/people/1.json
  def update
    respond_to do |format|
      if @index_person.update(index_person_params)
        format.html { redirect_to @index_person, notice: 'Person was successfully updated.' }
        format.json { render :show, status: :ok, location: @index_person }
      else
        format.html { render :edit }
        format.json { render json: @index_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /index/people/1
  # DELETE /index/people/1.json
  def destroy
    @index_person.destroy
    respond_to do |format|
      format.html { redirect_to index_people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_index_person
      @index_person = Index::Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def index_person_params
      params.require(:index_person).permit(:name, :age)
    end
end
