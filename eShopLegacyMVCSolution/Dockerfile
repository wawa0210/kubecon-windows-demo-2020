FROM registry.cn-hangzhou.aliyuncs.com/microsoft-mirror/dotnet-framework-sdk:4.7.2-windowsservercore-ltsc2019 AS build
WORKDIR /app

COPY *.sln .
# copy csproj and restore as distinct layers
COPY src/eShopLegacyMVC/*.csproj ./src/eShopLegacyMVC/
COPY src/eShopLegacyMVC/*.config ./src/eShopLegacyMVC/

RUN nuget restore  eShopLegacyMVC.sln

COPY src/eShopLegacyMVC/. ./src/eShopLegacyMVC/
RUN msbuild /p:Configuration=Release


FROM registry.cn-hangzhou.aliyuncs.com/microsoft-mirror/aspnet:4.7.2-windowsservercore-ltsc2019 AS runtime
WORKDIR /inetpub/wwwroot
COPY --from=build /app/src/eShopLegacyMVC/. ./

