require 'naughty_or_nice'

class PeerReview

  include NaughtyOrNice

  class << self
    # returns an instance of our custom public suffix list
    # list behaves like PublicSuffix::List but is limited to our whitelisted domains
    def list
      @list ||= PublicSuffix::List::parse(File.new(list_path, "r:utf-8"))
    end

    # Returns the absolute path to the domain list
    def list_path
      File.join(config_path,"domains.txt")
    end

    private

    def config_path
      File.join(File.dirname(__FILE__), "../config")
    end

    def list_contents
      @list_contents ||= File.new(list_path, "r:utf-8").read
    end
  end

  # Checks if the input string represents a research domain
  def valid?
    # Ensure it's a valid domain
    return false unless domain && domain.valid?

    # check using public suffix's standard logic
    rule = PeerReview.list.find(to_s)

    # domain is on the domain list and
    # domain is not explicitly blacklisted and
    # domain matches a standard public suffix list rule
    !rule.nil? && rule.type != :exception && rule.allow?(".#{domain}")
  end
end
