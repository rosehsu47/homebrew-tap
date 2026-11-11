class FolderTidy < Formula
  desc "Sort a messy Mac folder into category folders by rules, with preview and undo"
  homepage "https://github.com/rosehsu47/folder-tidy"
  url "https://github.com/rosehsu47/folder-tidy/releases/download/v0.1.0/folder-tidy-0.1.0-macos-universal.tar.gz"
  version "0.1.0"
  sha256 "9bb7cd385d11344394ee3424d5bebf47cfbc94ea876a4231937f1e32ac1af136"
  license "MIT"

  depends_on :macos

  def install
    bin.install "folder-tidy"
  end

  test do
    assert_match "Usage: folder-tidy", shell_output("#{bin}/folder-tidy --help")
  end
end
