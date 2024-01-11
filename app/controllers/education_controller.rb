class EducationController < ApplicationController

  def index
    @education = current_user.educations.all
  end

  def new
    @education = current_user.education.new(set_edu_params)
  end

  def create
    @education = current_user.education.new(set_edu_params)
    if @education.save
      redirect_to , notice: "education added successfully"
    else
      render :new
    end
  end

  def show
    current_user.educations(params[:id])
  end

  def edit
    @education = current_user.education(parmas[:id])
  end

  def update
    if @education.update(set_edu_params)
      redirect_to , notice: "education updated successfully"
    else
     render :edit
    end
  end

  def destroy
    current_user.education(params[:id]).destroy
    redirect_to , notice: "education field deleted successfully"
  end

  private
    def set_edu_params
      params.require(:education).permit(:name, :degree, :field, :location, :start_date, :end_date)
    end
end
