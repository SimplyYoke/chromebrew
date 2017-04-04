require "package"

class A2ps < Package
  version "4.14"
  source_url "https://nodejs.org/dist/v6.10.2/node-v6.10.2-linux-armv7l.tar.xz"
  source_sha1 "a2087c8e37f66677f0bcdb7ce6da8e5489972db6a921dad8c1fd406f4ce19338"

  def self.build
    system "./configure"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end