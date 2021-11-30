
module PeopleInteractor
  class Index
    include Interactor # importando la gem interactor
      def call 
        # context.output -> enviar de distintas formar una respuesta
        context.output = index_peoples
      end
      private
      def index_peoples
        people = People.all
        #if people.blank
         # context.message
        #end
        

      end
  end
end