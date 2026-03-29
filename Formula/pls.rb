class Pls < Formula
  desc "Natural-language shell command suggester"
  homepage "https://github.com/drumline18/pls"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.intel?
    if OS.mac?
      url "https://github.com/drumline18/pls/releases/download/v#{version}/pls_#{version}_darwin_amd64.tar.gz"
      sha256 "9af9d905d814777a59fd667913aebdeba03b4b6f1b35aea61f8c6fcd3258d54f"
    else
      url "https://github.com/drumline18/pls/releases/download/v#{version}/pls_#{version}_linux_amd64.tar.gz"
      sha256 "bae5171d4fcb4e1296cb8fe085f7a46a5aeb3ee4d30c02d666b79b3ea63e9e56"
    end
  else
    if OS.mac?
      url "https://github.com/drumline18/pls/releases/download/v#{version}/pls_#{version}_darwin_arm64.tar.gz"
      sha256 "04a5110881405f29edd1cba8370731c1c744643d9d9aa512ab109d12f1b5c38d"
    else
      url "https://github.com/drumline18/pls/releases/download/v#{version}/pls_#{version}_linux_arm64.tar.gz"
      sha256 "d42049b02df56f78224e1d33751e543c7bbf3e6a21c4bdba52113f041fe33353"
    end
  end

  def install
    bin.install "pls"
  end

  test do
    output = shell_output("#{bin}/pls --help")
    assert_match "pls", output
  end
end
