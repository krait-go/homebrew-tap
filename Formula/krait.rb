class Krait < Formula
  desc "Unified codebase health analyzer for Go"
  homepage "https://github.com/krait-go/krait"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/krait-go/krait/releases/download/v0.1.1/krait_darwin_arm64.tar.gz"
      sha256 "5e634850f0739dd09dea7730637c135349b430ea7000239f4621d3c72d05904d"
    end
    on_intel do
      url "https://github.com/krait-go/krait/releases/download/v0.1.1/krait_darwin_amd64.tar.gz"
      sha256 "f639b5638f83e741b8f441828d7fa684d31545f1b3a11469a120c0654f9c971c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/krait-go/krait/releases/download/v0.1.1/krait_linux_arm64.tar.gz"
      sha256 "0bb8d05be375bd5124bf8dd9165e90382f5d1dc3e58227e9cc4516fdb4d3eecc"
    end
    on_intel do
      url "https://github.com/krait-go/krait/releases/download/v0.1.1/krait_linux_amd64.tar.gz"
      sha256 "442f8f512fed312bacf0b52ddb78bc0f949c57b90516e3261f6682ddc81eff56"
    end
  end

  def install
    bin.install "krait"
  end

  test do
    system bin/"krait", "--version"
  end
end
