# sclt.rb
class Sclt < Formula
  desc "Sample CLI app for a library to build a CLI app display in Swift"
  homepage "https://github.com/KC-2001MS/SwiftLI"
  url "https://github.com/KC-2001MS/SwiftLI.git", tag: "0.0.2"
  version "0.0.2"

  depends_on "xcode": [:build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}sclt", "list"
  end
end
