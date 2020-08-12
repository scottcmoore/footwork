# frozen_string_literal: true

# CRUD actions for tasks
class TasksController < ApplicationController
  def show
    task = Task.find(params[:id])
    render json: task
  end
end
