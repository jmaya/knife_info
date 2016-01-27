require 'chef/knife'
# other require attributes, as needed

module KnifeInfo
  class Info < Chef::Knife
    deps do
      # require 'chef/dependency'
      # other dependencies, as needed
    end

    banner 'knife info argument VALUE (options)'

    # option :name_of_option,
    #   :short => "-l VALUE",
    #   :long => "--long-option-name VALUE",
    #   :description => "The description for the option.",
    #   :proc => Proc.new { code_to_run }
    # :boolean => true | false
    # :default => default_value

    def run
      ui.color('Testing!!!', :bold)
    end
  end
end
