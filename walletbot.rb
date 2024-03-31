BUILD_VERSION = "v1.7.1"
AMD_SHASUM_256 = "0cb0ed309911128a2c8100de7c411a903814d3ffab286e60f7db3543d3b79df9"
ARM_SHASUM_256 = "36218bf3427d17ba07cffdcbaffbd4a521894ac771dda6b29e74e9a1e48f89b0"

class Walletbot < Formula
  desc "Your Money-Sending Robot Friend"
  homepage "https://github.com/anypay/walletbot"

  # For ARM architecture
  on_arm do
    url "https://github.com/anypay/walletbot/releases/download/#{BUILD_VERSION}/walletbot-macos-arm64"
    sha256 ARM_SHASUM_256
  end

  on_intel do
    url "https://github.com/anypay/walletbot/releases/download/#{BUILD_VERSION}/walletbot-macos-x64"
    sha256 AMD_SHASUM_256
  end

  def install

    on_arm do
      mv "walletbot-macos-arm64", "walletbot"
    end

    on_intel do

      mv "walletbot-macos-x64", "walletbot"
    end
    
    bin.install "walletbot" => "walletbot"
  end

  test do
    system "#{bin}/walletbot", "--version"
  end
end