FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim AS build

WORKDIR /app
ADD . /app/

EXPOSE 3000

RUN dotnet build

WORKDIR /app/

ENTRYPOINT ["dotnet", "run", "/app/Core.Application.dll"]
