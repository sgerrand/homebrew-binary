class Serf < Formula
  desc "Serf is a decentralized solution for cluster membership and orchestration."
  homepage "http://www.serfdom.io"
  version "0.6.4"

  if Hardware.is_64_bit?
    url "https://dl.bintray.com/mitchellh/serf/0.6.4_darwin_amd64.zip"
    sha256 "8f1cd35ab55e95657c1dcc657df94fee62cb745ba72927d105559396c4f0a3ef"
  else
    url "https://dl.bintray.com/mitchellh/serf/0.6.4_darwin_386.zip"
    sha256 "9d427342a32301069e38e09258d3aaeef76688da4fa31a766196ce9a7ef4342e"
  end

  def install
    bin.install "serf"
  end

  test do
    assert_equal "Serf v#{version}", `#{bin}/serf --version`.split("\n").first.strip
  end
end
