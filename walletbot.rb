BUILD_VERSION = "v1.7.3"
AMD_SHASUM_256 = "7e0a4f0edca52031b09fb89591225c33ebd1693bd0ead98319d490ac77e20a24"
ARM_SHASUM_256 = "3abc4e7a42632a1a1019f4ddfb86a243e84e19a9d82f5f00d84edb50d8bfa95b"

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