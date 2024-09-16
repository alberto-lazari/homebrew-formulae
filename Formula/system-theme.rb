class SystemTheme < Formula
  desc "Switch between macOS light/dark themes from CLI"
  homepage "https://github.com/alberto-lazari/system-theme"
  url "https://github.com/alberto-lazari/system-theme/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "fb6bf523b7f33b96f6b88375c37182a9f8e085aa42efd3d1f479af3f51413038"
  license "GPL-3.0-or-later"
  head "https://github.com/alberto-lazari/system-theme.git", branch: "main"

  depends_on :macos => :mojave

  def install
    bin.install "system-theme"
  end

  test do
    assert_match(/\A(light|dark)\z/, shell_output(bin/"system-theme"))
    assert_equal "system-theme #{version}", shell_output(bin/"system-theme --version")
  end
end
