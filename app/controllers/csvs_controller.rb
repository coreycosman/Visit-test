class CsvsController < ApplicationController
  def index
    @csvs = Csv.all
    @csv = Csv.new
  end

  def create
    @csv = Csv.new(csv_params)
    # byebug
    if @csv.save
      flash[:notice] = "CSV Submitted!"
      redirect_to '/'
    else
      flash[:error] = 'Please Fill In All Fields'
      redirect_to '/'
    end
  end

  private

  def csv_params
    params.require(:csv).permit %i[name date number description]
  end
end
