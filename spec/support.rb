def wait_until(css, seconds = 15)
  begin
    Timeout::timeout(seconds) { sleep 1 until has_css?(css) }
  rescue Timeout::Error
    raise "waiting for #{css} but it's not showing within #{seconds} seconds"
  end
end