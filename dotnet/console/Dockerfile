# Build runtime image
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS runtime

COPY ./ ./

ENTRYPOINT ["dotnet", "bin/Debug/netcoreapp3.1/Bourscrap.Core.dll"]
