class Anypay < Formula
  desc "Anypay Server for Web3 Payments"
  homepage "https://github.com/anypay/anypay-go"
  url "https://github.com/anypay/anypay-go/releases/download/0.0.7/anypay-go-0.0.7-darwin-amd64.tar.gz"
  sha256 "00390ce32d58c1c8e43945d8dd587265"

  # For ARM architecture
  on_arm do
    url "https://github.com/anypay/anypay-go/releases/download/0.0.7/anypay-go-0.0.7-darwin-arm64.tar.gz"
    sha256 "11044bee4bf463dd20e8a4e9785d330a"
  end

  def install
    bin.install "anypay"
  end

  test do
    system "#{bin}/anypay", "--version"
  end
end

