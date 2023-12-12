# Use the official .NET SDK as a build image
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy the project file and restore dependencies
COPY ASPNETCore-Web-API----Food-Items-main/WebApiAspNetCore/WebApiAspNetCore.csproj ./
RUN dotnet restore

# Copy the rest of the application files
COPY ASPNETCore-Web-API----Food-Items-main/. ./

# Build the application
RUN dotnet publish -c Release -o out

# Use a smaller runtime image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/out ./

# Expose the port
EXPOSE 80

# Command to run the application
CMD ["dotnet", "WebApiAspNetCore.dll"]
