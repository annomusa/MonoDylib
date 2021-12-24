
try_example:
	cd Example && pod install && open MonoDylib.xcworkspace

try_pod:
	cd Example && pod install

create_binaries:
	cd MonoDylibProject/Marketplace
	carthage build --no-skip-current --use-xcframeworks
	cd ../..
	mkdir -p MonoDylib/Marketplace
	cp -R MonoDylibProject/Carthage/Build/MarketplaceMonoDylib.xcframework MonoDylib/Marketplace
