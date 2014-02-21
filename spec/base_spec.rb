require 'spec_helper'

describe "The base template" do
  before(:all) do
    FileUtils.chdir(tmp_dir) do
      run "rm -rf app"
      run "rails new app -m ../base.rb"
    end
  end

  it "generates a new application" do
    rails_root.should exist
  end

end