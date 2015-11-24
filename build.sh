

build()
{
appName="$1"
bundleId="$2"
provisionProfile="$3"
codesignId="$4"



CURRENT_DIR=$(PWD)

rm -rf $CURRENT_DIR/build



xcodebuild \
-workspace PodIssue.xcworkspace \
-scheme "Pods-PodIssue" \
-configuration Release \
-sdk iphoneos


xcodebuild  \
-workspace PodIssue.xcworkspace \
-scheme "PodIssue" \
-configuration Release \
-sdk iphoneos \
PRODUCT_BUNDLE_IDENTIFIER=$bundleId \
PROVISIONING_PROFILE=$provisionProfile \
CODE_SIGN_IDENTITY="$codesignId" \
PRODUCT_NAME="$appName" \
APP_NAME="$appName" \
LIBRARY_SEARCH_PATHS="${CURRENT_DIR}/build/Release-iphoneos" \
build  \
|| exit 1


}

pod install

build \
'PodIssue' \
'<bundle id>' \
'<provision profile id>' \
'<code sign identify>'



post_install do |installer_representation|

end

