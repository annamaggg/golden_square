require 'password_checker'

RSpec.describe PasswordChecker do
  it "checks password is longer than 8 characters" do
    entry = PasswordChecker.new()
    output = entry.check("hellothere")
    expect(output).to eq true
  end
end

RSpec.describe PasswordChecker do 
  context "when password is too short" do 
    it "fails" do
      entry = PasswordChecker.new()
      expect { entry.check("anna") }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end
      
