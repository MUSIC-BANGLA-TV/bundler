require "spec_helper"

describe "ruby requirement" do
  it "allows adding gems" do
    install_gemfile <<-G
      source "file://#{gem_repo1}"
      gem "rack"
    G

    install_gemfile <<-G
      source "file://#{gem_repo1}"
      gem "rack"
      gem "rack-obama"
    G

    expect(exitstatus).to eq(0) if exitstatus
    should_be_installed "rack-obama 1.0"
  end
end
