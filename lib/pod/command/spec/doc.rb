module Pod
  class Command
    class Spec
      class Doc < Spec
        self.summary = "Opens the web documentation of a Pod."

        self.description = <<-DESC
          Opens the web documentation of the Pod with the given NAME.
        DESC

        self.arguments = [
          CLAide::Argument.new('NAME', true)
        ]

        def initialize(argv)
          @name = argv.shift_argument
          super
        end

        def validate!
          super
          help! "A Pod name is required." unless @name
        end

        def run
          path = get_path_of_spec(@name)
          spec = Specification.from_file(path)
          UI.puts "Opening #{spec.name} documentation"
          `open "http://cocoadocs.org/docsets/#{spec.name}"`
        end
      end
    end
  end
end
