require 'helper'

class TestPeerReview < Minitest::Test
  should "returns the path to domains.txt" do
    assert_equal true, File.exists?(PeerReview.list_path)
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
