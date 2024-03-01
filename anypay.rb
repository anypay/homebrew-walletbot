BUILD_VERSION = "0.0.7"

class Anypay < Formula
  desc "Anypay Server for Web3 Payments"
  homepage "https://github.com/anypay/anypay-go"
  url "https://github.com/anypay/anypay-go/releases/download/#{BUILD_VERSION}/anypay-go-#{BUILD_VERSION}-darwin-amd64.tar.gz"
  sha256 "00390ce32d58c1c8e43945d8dd587265"

  # For ARM architecture
  on_arm do
    url "https://github.com/anypay/anypay-go/releases/download/#{BUILD_VERSION}/anypay-go-#{BUILD_VERSION}-darwin-arm64.tar.gz"
    sha256 "0a348ddf4b4e8d77b193816accfc0031420b3f88aa62593115e1276b9ac0790d"
  end

  def install
    bin.install "anypay-go" => "anypay"
  end

  test do
    system "#{bin}/anypay", "--version"
  end
end

