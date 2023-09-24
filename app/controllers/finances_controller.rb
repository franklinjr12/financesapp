class FinancesController < ApplicationController
  
  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(title: "...", description: "...", amount: 0.0, due_date: Date.today, paid: false)

    if @bill.save
      redirect_to @bill
    else
      render :new, status: :unprocessable_entity
    end
  end

end
