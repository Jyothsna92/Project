class PetsController < ApplicationController
	def create
		@person = Person.find(params[:person_id])
   		@pet = @person.pets.create(pet_params)
   		redirect_to person_path(@person)
	end

	def destroy
    @person = Person.find(params[:person_id])
    @pet = @person.pets.find(params[:id])
    @pet.destroy
    redirect_to person_path(@person)
  	end

	private
    def pet_params
      params.require(:pet).permit(:name)
    end
end
