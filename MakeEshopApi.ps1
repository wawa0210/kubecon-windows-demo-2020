$eshopVersion="2.1"
pushd 

cd .\eshop-api

docker build -t  10.7.106.172/kube-system/dotnet-eshop-api:$eshopVersion .
docker push 10.7.106.172/kube-system/dotnet-eshop-api:$eshopVersion


docker run  --rm  --name eshop-api -d -p 9090:80 10.7.106.172/kube-system/dotnet-eshop-api:$eshopVersion

curl http://localhost:9090/catalogs

popd
