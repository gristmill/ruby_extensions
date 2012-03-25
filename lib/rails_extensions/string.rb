module RailsExtensions
  module String
    def to_sha1
      Digest::SHA1.hexdigest(self)
    end

    def to_slug(delimiter="-")
      self.gsub(/[^a-z0-9]/i, " ").strip.gsub(/\s/, delimiter).gsub(/#{delimiter}{2}/, delimiter).downcase
    end

    def to_alpha_numeric
      self.gsub(/[^a-z0-9]/i, " ").gsub(/\s{2,}/, ' ').strip
    end

    def to_email
      self.scan(/\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b/)
    end

    def mentions
      self.scan(/@[a-z_]+\b/)
    end

    def hash_tags
      self.scan(/#[a-z_]+\b/)
    end

    def escape_acronyms(regex)
      self.gsub(regex) do |str|
        str.upcase
      end
    end
  end
end
