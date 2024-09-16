class SystemTheme < Formula
  desc "Switch between macOS light/dark themes from CLI"
  homepage "https://github.com/alberto-lazari/system-theme"
  url "https://github.com/alberto-lazari/system-theme/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "91b6580a243f503f0be34af14de3564cc793e57b02539187edef71e398b936b8"
  license "GPL-3.0-or-later"
  head "https://github.com/alberto-lazari/system-theme.git", branch: "main"

  depends_on :macos

  def install
    bin.install "system-theme"
  end

  test do
    assert_match(/\A(light|dark)\z/, shell_output(bin/"system-theme"))
    assert_equal "system-theme #{version}", shell_output(bin/"system-theme --version")
  end
end
