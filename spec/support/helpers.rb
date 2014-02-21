module Helpers

  def run(cmd)
    File.open(log_file, 'a') { |f| f.puts "+ #{cmd}" }
    system "#{cmd} >> #{log_file} 2>&1"
    if ! $?.success?
      raise "#{cmd.inspect} returned #{$?}"
    end
  end

  def tmp_dir
    Pathname.new(File.dirname(__FILE__)).join("../../tmp")
  end

  def log_file
    tmp_dir.join("run.log")
  end

  def rails_root
    tmp_dir.join("app")
  end

end
