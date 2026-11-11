class FolderTidy < Formula
  desc "Sort a messy Mac folder into category folders by rules, with preview and undo"
  homepage "https://github.com/rosehsu47/folder-tidy"
  url "https://github.com/rosehsu47/folder-tidy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "268deba7d4a7d03203d94171c95cfaca04a0184d1f7a999855ba173d62c47c9b"
  license "MIT"
  head "https://github.com/rosehsu47/folder-tidy.git", branch: "main"

  depends_on "rust" => :build
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Usage: folder-tidy", shell_output("#{bin}/folder-tidy --help")
  end
end
