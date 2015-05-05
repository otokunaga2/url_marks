require File.dirname(__FILE__) + '/../test_helper'
describe User do
# test "the truth" do
#   assert true
# end
before { @user = User.new(name: "otokunaga", email:"hoge@example.com")}
subject {@user}
it {should respond_to(:name)}
it {should respond_to(:email)}
end
