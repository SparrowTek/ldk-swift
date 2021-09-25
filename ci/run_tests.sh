set -e
set -x

# find all directories and files within LDKSwift sources, exclude batteries. 
# If at least one result (xargs -r), remove recursively (rm -r)
find ./LDKSwift/Sources/LDKSwift/* -maxdepth 0 -not -name 'batteries' | xargs -r rm -r
# rm -i -r ./LDKSwift/Sources/LDKSwift/^(batteries)*

pushd ../
# working within /

python3 ./

mkdir -p /ci/LDKSwift/Sources/LDKHeaders/include/
cp /ldk-c-bindings/lightning-c-bindings/include/*.h /ci/LDKSwift/Sources/LDKHeaders/include/
cp /ldk-c-bindings/ldk-net/ldk_net.h /ci/LDKSwift/Sources/LDKHeaders/include/
cp /ldk-c-bindings/ldk-net/ldk_net.c /ci/LDKSwift/Sources/LDKHeaders/

popd
# working within /ci

python3 ./fix_header_includes.py
python3 ./fix_swift_imports.py

pushd LDKSwift/
swift test # -Xswiftc -suppress-warnings
