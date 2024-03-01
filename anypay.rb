BUILD_VERSION = "0.0.7"
AMD_SHASUM_256 = "2e6821e57d55f59bd0ae3796eb3ed07c0a0a987761fea7de024a1620c36ad86d"
ARM_SHASUM_256 = "0a348ddf4b4e8d77b193816accfc0031420b3f88aa62593115e1276b9ac0790d"

class Anypay < Formula
  desc "Anypay Server for Web3 Payments"
  homepage "https://github.com/anypay/anypay-go"
  url "https://github.com/anypay/anypay-go/releases/download/#{BUILD_VERSION}/anypay-go-#{BUILD_VERSION}-darwin-amd64.tar.gz"
  sha256 AMD_SHASUM_256

  # For ARM architecture
  on_arm do
    url "https://github.com/anypay/anypay-go/releases/download/#{BUILD_VERSION}/anypay-go-#{BUILD_VERSION}-darwin-arm64.tar.gz"
    sha256 ARM_SHASUM_256
  end

  def install
    bin.install "anypay-go" => "anypay"
  end

  test do
    system "#{bin}/anypay", "--version"
  end
end
