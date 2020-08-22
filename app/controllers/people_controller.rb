class PeopleController < ApplicationController
    def new
    end

    # def edit
    #     @person = Person.find(params[:id])
    # end

    def manpage
       @people = Person.all
    end

    def fempage
        @people = Person.all
    end

    def create
        @person = Person.new(people_params)
        @person[:mvote] = 0
        @person[:fvote] = 0

        @person.save
        redirect_to @person
    end

    def show
        @person = Person.find(params[:id])
    end

    # def update
    #     @person = Person.find(params[:id])

    #     if @person.update(people_params)
    #         redirect_to @person
    #     else
    #         render 'edit'
    #     end
    # end

    def mvoteup
        @person = Person.find(params[:id])
        @person.mvoteup
        redirect_to root_path
    end

    def fvoteup
        @person = Person.find(params[:id])
        @person.fvoteup
        redirect_to root_path
    end

    private
        def people_params
            params.require(:person).permit(:location,:mvote,:fvote)
        end
end
