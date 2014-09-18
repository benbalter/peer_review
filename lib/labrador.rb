require 'naughty_or_nice'

class Labrador < NaughtyOrNice
  class << self
    # returns an instance of our custom public suffix list
    # list behaves like PublicSuffix::List but is limited to our whitelisted domains
    def list
      @list ||= PublicSuffix::List::parse(File.new(list_path, "r:utf-8"))
    end

    # Returns the absolute path to the domain list
    def list_path
      File.expand_path("../config/domains.txt", File.dirname(__FILE__))
    end
  end

  # Checks if the input string represents a research domain
  def valid?
    # Ensure it's a valid domain
    return false unless PublicSuffix.valid?(domain)

    # check using public suffix's standard logic
    rule = Labrador.list.find domain
    return true if !rule.nil? && rule.allow?(domain)

    # also allow for explicit matches to domain list
    Labrador.list.rules.any? { |rule| rule.value == domain }
  end
end
