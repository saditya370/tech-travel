# app/avo/fields/ckeditor_field.rb
class CkeditorField < Avo::Fields::BaseField
  def initialize(name, **args, &block)
    super(name, **args, &block)
    @partial_name = "avo/fields/ckeditor_field"
  end
end
