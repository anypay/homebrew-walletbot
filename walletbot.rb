BUILD_VERSION = "v1.7.1"
AMD_SHASUM_256 = "eb1ca6c0e190e8e9735fd0ea9c7b431b7de12e5c71fe1da4c79969373896d079"
ARM_SHASUM_256 = "135936ffa4930ed39c2eb42063456ec8764df3ac85fa71750ba5cfb9ce6815f6"

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