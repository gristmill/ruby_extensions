# Rails Extensions

## Installation

Place in your Gemfile and run bundle

``` ruby

gem "rails_extensions", git: "git@github.com:AgilionApps/rails_extensions.git"

```

## String Class Extensions

``` ruby

 # Hash a string
 "password".to_sha1
 # => "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8"

 # Extract email addresses from a string
 "Hello sean@agilionapps.com, how are you?".to_email
 # => ["sean@agilionapps.com"]

 # Turn a string into a url friendly slug
 "hello world how are you today?".to_slug
 # => "hello-world-how-are-you-today"

```

## Testing

At least for now...

``` ruby
ruby -Itest test/string.rb
```
