require 'modeselector'

Given(/^the program has finished$/) do
  @cucumber_hello_rb = `modeselector examples/hello.rb`
  @cucumber_hello_py = `modeselector examples/hello.py`
  @cucumber_hello_sh = `modeselector examples/hello.sh`
  @cucumber_hello_pl = `modeselector examples/hello.pl`
  @cucumber_hello = `modeselector examples/hello`
  @cucumber_version = `modeselector -v`
end

Then(/^the output is correct for each test$/) do
  lines_hello_rb = @cucumber_hello_rb.split("\n")
  expect(lines_hello_rb.length).to eq(1)
  expect(lines_hello_rb[0]).to match(%r(# vim: set filetype=ruby))

  lines_hello_py = @cucumber_hello_py.split("\n")
  expect(lines_hello_py.length).to eq(1)
  expect(lines_hello_py[0]).to match(%r(# -\*- mode: python -\*-))

  lines_hello = @cucumber_hello.split("\n")
  expect(lines_hello.length).to eq(1)
  expect(lines_hello[0]).to match(%r(// -\*- mode: javascript -\*-))

  lines_hello_pl = @cucumber_hello_pl.split("\n")
  expect(lines_hello_pl.length).to eq(4)
  expect(lines_hello_pl[0]).to match(%r(# Local Variables:))
  expect(lines_hello_pl[1]).to match(%r(# eval))
  expect(lines_hello_pl[2]).to match(%r(# eval))
  expect(lines_hello_pl[3]).to match(%r(# End:))

  lines_hello_sh = @cucumber_hello_sh.split("\n")
  expect(lines_hello_sh.length).to eq(0)

  lines_version = @cucumber_version.split("\n")
  expect(lines_version.length).to eq(1)
  expect(lines_version[0]).to match(%r(^modeselector .+$))
end
