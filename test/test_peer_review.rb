require 'helper'

class TestPeerReview < Minitest::Test
  should "returns the path to domains.txt" do
    assert_equal true, File.exists?(PeerReview.send(:list_path))
  end

  should "return the list contents" do
    assert_match /gov/, PeerReview.send(:list_contents)
  end

  should "expose the list" do
    assert_equal PublicSuffix::List, PeerReview.list.class
    assert PeerReview.list.count > 5
  end

  should "sniff out known research domains" do
    assert PeerReview.valid?("jpl.nasa.gov")
    assert PeerReview.valid?("https://lanl.gov")
    assert PeerReview.valid?("albert@epsrc.ac.uk")
  end

  should "not bark at randos" do
    refute PeerReview.valid?("githbub.com")
    refute PeerReview.valid?("http://foo.co.uk")
    refute PeerReview.valid?("president@whitehouse.gov")
  end
end
