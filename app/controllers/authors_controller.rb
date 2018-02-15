class AuthorsController < ApplicationController
  before_action :load_author, only: [:show]
  before_action :assign_author, only: [:step2, :step3, :create]

  def index
    @authors = Author.all
  end

  def new
  end

  def step1
    @author = Author.new
  end

  def step2
  end

  def step3
  end

  def show
  end

  def create
    respond_to do |format|
      if @author.save
        format.html { redirect_to @author, notice: 'Author was successfully created.' }
        format.json { render :show, status: :created, location: @author }
      else
        format.html { render :new }
        format.json { render json: @author.errors, status: :unprocessable_entity }
        format.js do
          @errors = [].tap do |errors|
            @author.errors.full_messages.each do |error|
              errors << error
            end
          end.join('<br />')
        end
      end
    end
  end

  private
    def load_author
      @author = Author.find(params[:id])
    end

    def assign_author
      @author = Author.new(author_params)
    end

    def author_params
      params.require(:author).permit(:first_name, :last_name, :username, :password)
    end
end
