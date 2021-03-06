cask 'sketchbook' do
  version '8.6.1'
  sha256 '6f7c1b4feb32fea7172068e3f3b02748a9fa9e21e099579c7ca7ce00648c2518'

  url "https://update.sketchbook.com/mac/SketchBook_v#{version}_mac.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://update.sketchbook.com/mac/latest'
  name 'Autodesk Sketchbook'
  homepage 'https://www.sketchbook.com/'

  pkg "SketchBook_v#{version}_mac.pkg"

  uninstall quit:    'com.autodesk.SketchBook',
            pkgutil: '.*SketchBook.*'
end
