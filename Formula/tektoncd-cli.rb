
class TektoncdCli < Formula
  desc ""
  homepage "https://tekton.dev"
  url "https://github.com/tektoncd/cli"
  version "0.1"
  sha256 "c43e6d776a5b532ba7587b4695b31366cea2769a7dd7ce971aba6b11f34b18b7"
  url "https://github.com/tektoncd/cli/releases/download/v0.1.0/tkn_0.1.0_Darwin_x86_64.tar.gz"
  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "go build ./cmd/..."
    bin.install "tkn" => "tkn"
  end

  test do
    system "#{bin}/tkn", "--help"
  end
end
