class Unixdm < Formula
  desc "Correctness-first, resumable download manager for Unix terminals"
  homepage "https://github.com/wthrajat/unixdm"
  url "https://github.com/wthrajat/unixdm.git",
      tag:      "v0.2.0",
      revision: "ac7797f18b69444c8f8e6188e68bb8438ca4b984"
  license "MPL-2.0"
  head "https://github.com/wthrajat/unixdm.git", branch: "main"

  depends_on "cmake" => :build
  depends_on "ftxui"
  uses_from_macos "curl"

  def install
    inreplace "CMakeLists.txt",
              "find_package(ftxui 6 CONFIG QUIET)",
              "find_package(ftxui 7 CONFIG REQUIRED)"

    system "cmake", "-S", ".", "-B", "build",
                    "-DBUILD_TESTING=OFF",
                    "-DFETCHCONTENT_FULLY_DISCONNECTED=ON",
                    *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    assert_match "unixdm #{version}", shell_output("#{bin}/unixdm --version")
    assert_match "Usage:", shell_output("#{bin}/unixdm --help")
  end
end
