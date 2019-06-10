# MongoDB Client only
class MongodbShell < Formula
  desc "MongoDB Shell (Client) Only, without the actual MongoDB runtime"
  homepage "https://github.com/erikzaadi/homebrew-mongodb-shell"
  url "https://downloads.mongodb.org/osx/mongodb-shell-osx-ssl-x86_64-4.0.10.tgz"
  sha256 "200a0d772915491de07928ed117e927d2a34760c3dded1cc347f689376336cb7"
  conflicts_with "mongodb", :because => "mongodb also ships a mongo shell"

  def install
    bin.install "bin/mongo"
  end

  test do
    assert_match(/MongoDB shell version v4\.0\.10/, shell_output("#{bin}/mongo --version").strip)
  end
end
