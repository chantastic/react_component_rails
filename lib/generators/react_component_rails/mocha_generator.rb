module ReactComponentRails
  class MochaGenerator < Rails::Generators::Base
    source_root File.expand_path '../../templates', __FILE__

    def create_package_json_file
      template('package.json', File.join('./package.json'))
    end

    def create_mocha_opts_file
      template('mocha.opts', File.join('./test/mocha.opts'))
    end

    def create_nodemon_json_file
      template('nodemon.json', File.join('./test/nodemon.json'))
    end

    def append_node_modules_to_gitignore
      append_to_file '.gitignore' do
        'node_modules'
      end
    end

    def run_npm_install
      `npm install`
    end

    def display_post_generator_message
      puts ''
      puts 'run `npm test`'
      puts ''
    end
  end
end
