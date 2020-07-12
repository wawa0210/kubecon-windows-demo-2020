$eshopVersion="1.0.7"
pushd 

cd .\eshop-api

docker build -t  10.7.106.172/kube-system/dotnet-eshop-api:$eshopVersion .
docker push 10.7.106.172/kube-system/dotnet-eshop-api:$eshopVersion

popd
