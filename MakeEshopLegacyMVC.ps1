$eshopVersion="1.0.7"

pushd

cd .\eShopLegacyMVCSolution

docker build -t 10.7.106.172/kube-system/eshop:4.7.2-windowsservercore-ltsc2019-$eshopVersion .
docker push 10.7.106.172/kube-system/eshop:4.7.2-windowsservercore-ltsc2019-$eshopVersion

popd