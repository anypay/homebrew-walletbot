BUILD_VERSION = "0.0.7"
AMD_SHASUM_256 = "df0d20808819a4c4b47b202153aee0c4165368f4b06d8ca75b293bdf67f6ca9b"
ARM_SHASUM_256 = "8605da484ded93433fbc2804f59d9b7542356c8879b637232f4609f787850b29"

class Walletbot < Formula
  desc "Your Money-Sending Robot Friend"
  homepage "https://github.com/anypay/wallet-bot"
  url "https://github.com/anypay/wallet-bot/releases/download/#{BUILD_VERSION}/walletbot-#{BUILD_VERSION}-macos-x64"
  sha256 AMD_SHASUM_256

  # For ARM architecture
  on_arm do
    url "https://github.com/anypay/wallet-bot/releases/download/#{BUILD_VERSION}/walletbot-#{BUILD_VERSION}-macos-arm64"
    sha256 ARM_SHASUM_256
  end

  def install
    bin.install "walletbot" => "walletbot"
  end

  test do
    system "#{bin}/walletbot", "--version"
  end
end
