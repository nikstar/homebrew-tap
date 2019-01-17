class Opusab < Formula
  desc "Is it Opusab or opusab?"
  homepage "https://github.com/nikstar/Opusab"
  url "https://github.com/nikstar/Opusab.git"
  version "0.1"

  depends_on :xcode => ["10.0", :build]
  depends_on "ffmpeg"
  depends_on "media-info"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "true"
  end
end
