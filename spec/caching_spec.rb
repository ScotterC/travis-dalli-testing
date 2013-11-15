require 'dalli'

describe "Cache Testing" do
  describe "fresh dalli" do
    it "should get foo" do
      client = Dalli::Client.new 'localhost:11211'
      client.set("foo", "bar")
      client.get("foo").should == "bar"
    end
  end
end