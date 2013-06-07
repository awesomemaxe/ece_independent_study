class GraduateStudentInfosController < ApplicationController
  # GET /graduate_student_infos
  # GET /graduate_student_infos.json
  def index
    @graduate_student_infos = GraduateStudentInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @graduate_student_infos }
    end
  end

  # GET /graduate_student_infos/1
  # GET /graduate_student_infos/1.json
  def show
    @graduate_student_info = GraduateStudentInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @graduate_student_info }
    end
  end

  # GET /graduate_student_infos/new
  # GET /graduate_student_infos/new.json
  def new
    @graduate_student_info = GraduateStudentInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @graduate_student_info }
    end
  end

  # GET /graduate_student_infos/1/edit
  def edit
    @graduate_student_info = GraduateStudentInfo.find(params[:id])
  end

  # POST /graduate_student_infos
  # POST /graduate_student_infos.json
  def create
    @graduate_student_info = GraduateStudentInfo.new(params[:graduate_student_info])

    respond_to do |format|
      if @graduate_student_info.save
        format.html { redirect_to @graduate_student_info, notice: 'Graduate student info was successfully created.' }
        format.json { render json: @graduate_student_info, status: :created, location: @graduate_student_info }
      else
        format.html { render action: "new" }
        format.json { render json: @graduate_student_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /graduate_student_infos/1
  # PUT /graduate_student_infos/1.json
  def update
    @graduate_student_info = GraduateStudentInfo.find(params[:id])

    respond_to do |format|
      if @graduate_student_info.update_attributes(params[:graduate_student_info])
        format.html { redirect_to @graduate_student_info, notice: 'Graduate student info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @graduate_student_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graduate_student_infos/1
  # DELETE /graduate_student_infos/1.json
  def destroy
    @graduate_student_info = GraduateStudentInfo.find(params[:id])
    @graduate_student_info.destroy

    respond_to do |format|
      format.html { redirect_to graduate_student_infos_url }
      format.json { head :no_content }
    end
  end
end
