release_tag_name = 'v0.0.7' # generated; do not edit

# We cannot distribute the XCFramework alongside the library directly,
# so we have to fetch the correct version here.
framework_name = 'mystiko_lib_bridge.xcframework'
remote_zip_name = "#{framework_name}.zip"
url = "https://github.com/mystikonetwork/mystiko-dart/releases/download/#{release_tag_name}/#{remote_zip_name}"
local_zip_name = "#{release_tag_name}.zip"
`
cd Frameworks
rm -rf #{framework_name}

if [ ! -f #{local_zip_name} ]
then
  curl -L #{url} -o #{local_zip_name}
fi

unzip #{local_zip_name}
cd -
`

Pod::Spec.new do |spec|
  spec.name          = 'mystiko_lib_bridge'
  spec.version       = '0.0.1'
  spec.license       = { :file => '../LICENSE' }
  spec.homepage      = 'https://github.com/mystikonetwork/mystiko-dart'
  spec.authors       = { 'Mystiko.Network' => 'community@mystiko.network' }
  spec.summary       = 'iOS/macOS Flutter bindings for mystiko_lib_bridge'

  spec.source              = { :path => '.' }
  spec.source_files        = 'Classes/**/*'
  spec.public_header_files = 'Classes/**/*.h'
  spec.vendored_frameworks = "Frameworks/#{framework_name}"

  spec.ios.deployment_target = '11.0'
  spec.osx.deployment_target = '10.11'
end