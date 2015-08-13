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
      file_path = File.join('app/assets/javascripts/components', "#{attributes[0].camelize}.js.jsx")
      template("component.js.jsx", file_path)
    end

    def create_component_test_file
      file_path = File.join('test/assets/javascripts/components', "#{attributes[0].camelize}-test.js")
      template("component-test.js", file_path)
    end
  end
end
