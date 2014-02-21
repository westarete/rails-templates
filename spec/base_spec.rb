require 'spec_helper'

describe "The base template" do
  before(:all) do
    FileUtils.chdir(tmp_dir) do
      run "rm -rf #{rails_root}"
      run "rails new #{rails_root} --template=../base.rb --skip-bundle"
    end
  end

  it "generates a new application" do
    rails_root.should exist
  end

end