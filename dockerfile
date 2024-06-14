FROM mcr.microsoft.com/dotnet/aspnet:8.0 as base
WORKDIR /app
EXPOSE 8080

FROM mcr.microsoft.com/dotnet/sdk:8.0 as build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["car-insurance-calc/car-insurance-calc.csproj", "car-insurance-calc/"]
RUN dotnet restore "car-insurance-calc/car-insurance-calc.csproj"
COPY . .
WORKDIR "/src/car-insurance-calc"
RUN dotnet build "car-insurance-calc.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build as publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "car-insurance-calc.csproj" -c $BUILD_CONFIGURATION -o /app/publish -p:UseAppHost=false

FROM base as final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT [ "dotnet", "car-insurance-calc.dll" ]
