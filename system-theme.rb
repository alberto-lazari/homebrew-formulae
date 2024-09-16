class SystemTheme < Formula
  desc "Switch between macOS light/dark themes from CLI"
  homepage "https://github.com/alberto-lazari/system-theme"
  url "https://github.com/alberto-lazari/system-theme/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "3849d3af51e80bc1d0055e4df9c836c197d56a466bb1c57185be4ec1f68b2b3a"
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
