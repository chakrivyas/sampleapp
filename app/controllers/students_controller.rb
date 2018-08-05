class StudentsController < ApplicationController
layout "student"

  def index

  @application_title = "Students Details"

  end

  def show

 @application_title = " New Student Details"

  end

  def new
  end

  def edit
  end
end
