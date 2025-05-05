# use a dotnet SDK image to build and publish the app
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
COPY src /src
WORKDIR /src
RUN dotnet publish -o /out


# use a minimal asp.net runtime image to run it
FROM mcr.microsoft.com/dotnet/aspnet AS runtime
WORKDIR /app
# copy just the build output from the earlier stage
COPY --from=build /out .
ENTRYPOINT ["dotnet", "BlazorApp.dll"]
