class DetailsController < ApplicationController
  before_action :set_detail, only: [:destroy]
  before_action :authenticate_member!, only: [:new, :edit, :update, :destroy]

#   def index
#     @contacts = Contact.all
#   end

#   def show
#     @detail = Detail.new
#   end

#   def new
#     @contact = Contact.new
#   end

#   def edit
#   end

  # POST /details
  # POST /details.json
  def create
    @detail = Detail.new(detail_params)

    respond_to do |format|
      if @detail.save
        # format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
        format.html { redirect_to @detail.contact, notice: 'Detail was successfully created.' }
        format.json { render :show, status: :created, location: @detail }
      else
        format.html { render :new }
        format.json { render json: @detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /details/1
  # DELETE /details/1.json
  def destroy
    @contact = @detail.contact
    @detail.destroy
    respond_to do |format|
      format.html { redirect_to @contact, notice: 'Detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    # Use callbacks to share common setup or constraints between actions.
    def set_detail
        @detail = Detail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_params
        params.require(:detail).permit(:name, :content, :contact_id)
    end
end
