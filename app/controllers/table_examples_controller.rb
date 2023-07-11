class TableExamplesController < ApplicationController
  before_action :set_table_example, only: %i[ show edit update destroy ]

  # GET /table_examples or /table_examples.json
  def index
    @table_examples = TableExample.all
  end

  # GET /table_examples/1 or /table_examples/1.json
  def show
  end

  # GET /table_examples/new
  def new
    @table_example = TableExample.new
  end

  # GET /table_examples/1/edit
  def edit
  end

  # POST /table_examples or /table_examples.json
  def create
    @table_example = TableExample.new(table_example_params)

    respond_to do |format|
      if @table_example.save
        format.html { redirect_to table_example_url(@table_example), notice: "Table example was successfully created." }
        format.json { render :show, status: :created, location: @table_example }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @table_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_examples/1 or /table_examples/1.json
  def update
    respond_to do |format|
      if @table_example.update(table_example_params)
        format.html { redirect_to table_example_url(@table_example), notice: "Friend has been successfully updated." }
        format.json { render :show, status: :ok, location: @table_example }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @table_example.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_examples/1 or /table_examples/1.json
  def destroy
    @table_example.destroy

    respond_to do |format|
      format.html { redirect_to table_examples_url, notice: "Friend has been deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_example
      @table_example = TableExample.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def table_example_params
      params.require(:table_example).permit(:first_name, :last_name, :email, :contact)
    end
end
