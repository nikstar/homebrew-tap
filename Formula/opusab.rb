class Opusab < Formula
  desc "Create Opus audiobooks from a list of mp3 files"
  homepage "https://github.com/nikstar/opusab"
  url "https://github.com/nikstar/opusab.git", :tag => "v1.0-beta", :revision => "3a890eecad9c4c16c826b69c2594fd47ed61341a"
  head "https://github.com/nikstar/opusab.git"

  depends_on :xcode => ["10.0", :build]
  depends_on "opus-tools"
  depends_on "ffmpeg"
  depends_on "media-info"

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/opusab"
  end

  test do
    system "#{bin}/opusab", "--help"
  end
end
