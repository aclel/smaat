require "spec_helper"

describe SignUpInfo do
  describe "sign_up_information" do
    let(:mail) { SignUpInfo.sign_up_information }

    it "renders the headers" do
      mail.subject.should eq("Sign up information")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
