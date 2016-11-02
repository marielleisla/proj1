class PokemonsController < ApplicationController
  def capture
    p = Pokemon.find(params[:id])
    p.trainer_id = current_trainer.id
    p.save!
    redirect_to root_path
  end

  def damage
    p = Pokemon.find(params[:id])
    p.update(health: p.health - 10)
    redirect_to trainer_path(p.trainer_id)
  end

  def heal
      p = Pokemon.find(params[:id])
      if p.health <= 100
        p.update(health: p.health + 10)
      end
      redirect_to trainer_path(p.trainer_id)
  end

  def new
    @pokemon = Pokemon.new
    @pokemon.name = "Name"
    @pokemon.health = 100
    @pokemon.level = 1
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save!
  end

  def update
    p = Pokemon.find(params[:format])
    p.update(name: params[:pokemon][:name])
    if p.valid?
       redirect_to trainer_path(p.trainer_id)
    else
       p.destroy
       flash[:error] = p.errors.full_messages.to_sentence
       @error = flash[:error]
    end
  end
end