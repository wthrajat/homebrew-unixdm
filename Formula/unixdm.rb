class Unixdm < Formula
  desc "Terminal download manager with segmented downloads"
  homepage "https://github.com/wthrajat/unixdm"
  url "https://github.com/wthrajat/unixdm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "cmake" => :build
  depends_on "curl"

  def install
    system "cmake", "-S", ".", "-B", "build",
                    *std_cmake_args

    system "cmake", "--build", "build"

    system "cmake", "--install", "build"
  end

  test do
    system "#{bin}/unixdm", "--help"
  end
end
