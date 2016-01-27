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
      if check_for_knife_rb
        url = extract_url
        puts url
      end
    end

    private
    def check_for_knife_rb
      knife_rb_path = File.join(ENV["HOME"], '.chef', 'knife.rb')
      File.exist? knife_rb_path
    end

    def extract_url
      knife_rb_path = File.join(ENV["HOME"], '.chef', 'knife.rb')
      File.readlines(knife_rb_path).grep(/chef_server_url/).first.split().last.gsub(/'/, '')
    end
  end
end
