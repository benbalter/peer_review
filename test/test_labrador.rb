require 'helper'

class TestLabrador < Minitest::Test
  should "returns the path to domains.txt" do
    assert_equal true, File.exists?(Labrador.list_path)
  end

  should "sniff out known research domains" do
    assert Labrador.valid?("jpl.nasa.gov")
    assert Labrador.valid?("https://lanl.gov")
    assert Labrador.valid?("albert@epsrc.ac.uk")
  end

  should "not bark at randos" do
    refute Labrador.valid?("githbub.com")
    refute Labrador.valid?("http://foo.co.uk")
    refute Labrador.valid?("president@whitehouse.gov")
  end
end
