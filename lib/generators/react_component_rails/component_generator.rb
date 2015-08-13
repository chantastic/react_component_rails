module ReactComponentRails
  class ComponentGenerator < Rails::Generators::Base
    source_root File.expand_path '../../templates', __FILE__
    desc <<-DESC.strip_heredoc
    Description:
        Scaffold a react component into app/assets/javascripts/components.
        The generated component will include a basic render function.

    Available field types:

    Examples:
        rails g react:component person
    DESC

    argument :attributes,
             :type => :array,
             :default => [],
             :banner => "field[:type] field[:type] ..."

    def create_component_file
      extension = "js.jsx"
      file_path = File.join('app/assets/javascripts/components', "#{attributes[0].camelize}.#{extension}")
      template("component.js.jsx", file_path)
    end
  end
end
