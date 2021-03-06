class Duff < Formula
  desc "Quickly find duplicates in a set of files from the command-line"
  homepage "http://duff.sourceforge.net/"
  url "https://downloads.sourceforge.net/project/duff/duff/0.5.2/duff-0.5.2.tar.gz"
  sha256 "15b721f7e0ea43eba3fd6afb41dbd1be63c678952bf3d80350130a0e710c542e"

  bottle do
    cellar :any_skip_relocation
    sha256 "8a469e92a6303d80752ebc80ade382261d263b9c7226ca6652eddc8954e5ff2f" => :el_capitan
    sha256 "927ba61ce39cf9be33f796197063b1a6865bbc2db2f4b1340ad6786acf0494df" => :yosemite
    sha256 "a66cbddeb95dd67055ef6db7acf729a925427778d6cc88ed2ef52a2dd40b7856" => :mavericks
  end

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}"
    system "make", "install"
  end
end
