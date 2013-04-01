require 'bacon'

describe Bacon do

  subject { Bacon.new }

# its method takes the name of a method to call on the subject
# of the tests; the block specified should contain an assertion
   its(:edible?) { should be_true}
#  it "is edible" do
#    subject.edible?.should be_true
#  end
  
  it "expired!" do
    subject.expired!
    subject.should_not be_edible
  end

end
