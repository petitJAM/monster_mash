class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :edit, :update, :destroy]

  def index
    @monsters = Monster.all
  end

  def show
  end

  def new
    @monster = Monster.new
  end

  def edit
  end

  def create
    @monster = Monster.new(monster_params)
    if @monster.save
      redirect_to @monster, notice: 'Monster was successfully created.'
    else
      render :new
    end
  end

  def update
    if @monster.update(monster_params)
      redirect_to edit_monster_path(@monster), notice: 'Monster was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @monster.destroy
    redirect_to monsters_url, notice: 'Monster was successfully destroyed.'
  end

  private

  def set_monster
    @monster = Monster.find(params[:id])
  end

  def monster_params
    params.require(:monster).permit! # TODO: real params
  end
end
