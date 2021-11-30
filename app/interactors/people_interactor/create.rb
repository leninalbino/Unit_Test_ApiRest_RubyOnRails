module PeopleInteractor
    class Create
        include Interactor
        def call
            context.output=create_peoples
        end
        private
        # delegate -> recibir informacion de los parametros
        #:simbolo -> se coloca para manipular un objeto
        #string: -> para darle distintos valores a una variable a un dato
        delegate :peoples_params, to: :context # to: :context -> recibe los datos en un formato y los manipula para ser guardado
        def create_peoples
            People.create(peoples_params)
            context.status = :created
            
            
        end
    end
end