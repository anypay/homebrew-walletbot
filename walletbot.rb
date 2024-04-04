BUILD_VERSION = "v1.10.0"
AMD_SHASUM_256 = "4e183108a92ec47b49c5799c906841c8271287c462a033f6a87ffb5d4825c962"
ARM_SHASUM_256 = "261aaf2b471ff57ffacf2db64a7b995b000c03facc3257b1f02c9305ce895c70"

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
