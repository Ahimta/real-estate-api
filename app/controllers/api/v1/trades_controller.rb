class Api::V1::TradesController < ApplicationController
  include SimpleCrudable

  def get_model
    @model ||= Trade
  end

  def safe_params
    params.require(:trade).permit Trade.props.safe_params
  end
end
