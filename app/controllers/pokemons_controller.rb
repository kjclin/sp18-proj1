class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to '/'
	end 

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer_id = current_trainer.id
		@pokemon.health -= 10
		if @pokemon.health <= 0
			@pokemon.destroy
		else
			@pokemon.save
		end
		redirect_to '/trainers/' + current_trainer.id.to_s
	end 

	def new
		@pokemon = Pokemon.new
	end 

	def create
		@pokemon = Pokemon.create(params[:name])
		@pokemon.update!(pokemon_params)
		@pokemon.trainer_id = current_trainer.id
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.save
		redirect_to '/trainers/' + current_trainer.id.to_s

		rescue => e 
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to '/new'
	end 
	
	private

		def pokemon_params
			params.require(:pokemon).permit(:name, :ndex)
		end
end
