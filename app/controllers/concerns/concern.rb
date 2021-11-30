module Concern
    def initialize_concern(result, success_status = :ok, error_status = :bad_request)
        @result = result
        @success_status = result.status || success_status
        @error_status = result.status || error_status
    end
end