class Idea < ActiveRecord::Base
  default_scope { order('id') }

  def self.props
  	@props ||= ModelProps.new(Idea, [Bodyable, Tradable], parents: [:Trade])
  end

  ATTRIBUTES     = props.attrs
  SAFE_PARAMS    = props.safe_params
  INVALID_TRAITS = props.invalid_traits
  VALID_TRAITS   = props.valid_traits
end
