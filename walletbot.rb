BUILD_VERSION = "v1.7.2"
AMD_SHASUM_256 = "2d205b50f551e40a1dce31e0a8fcb1a9aa918dd88e947177c970b14225c715cb"
ARM_SHASUM_256 = "3a86215c0ad04ac5a090238c1a15b0825f2810d89d80378e999a001ee02a94c3"

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