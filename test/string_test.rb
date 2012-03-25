require 'helper'

class StringTest < Test::Unit::TestCase

  def test_to_sha1
    assert_equal "5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8", "password".to_sha1
  end

  def test_to_slug
    assert_equal "hello-world", "Hello World".to_slug
    assert_equal "hello-world-how-are-you", "Hello World, How are You?".to_slug
    assert_equal "hello_world_how_are_you", "Hello World, How are You?".to_slug("_")
  end

  def test_to_alpha_numeric
    assert_equal "hello world how are you", "...hello-world, how...are you?".to_alpha_numeric
    assert_equal "1 2 3 4 can I have a little more", "1,2,3,4... can I have a little more?".to_alpha_numeric
  end

  def test_to_email
    assert "hello bseanvt@gmail.com how are you?".to_email.include?("bseanvt@gmail.com")
    assert "sean@agilionapps.com and adam@agilionapps.com are both email addresses".to_email.include?("adam@agilionapps.com")
  end

  def test_mentions
    assert_equal [], "hello world".mentions
    assert_equal %W(@bseanvt @tristan), "Hi, @bseanvt and @tristan, what's up?".mentions
  end

  def test_hash_tags
    assert_equal [], "hellow world".hash_tags
    assert_equal %W(#rails #ruby), "#rails is a framwork written in #ruby".hash_tags
  end

  def test_escape_acronyms
    assert_equal "HELLO world", "hello world".escape_acronyms(/hello/)
    assert_equal "XML and CSS are my favorite acronyms", "xMl and CsS are my favorite acronyms".escape_acronyms(/css|xml/i)
  end
end
