FROM microsoft/dotnet:2.1-sdk
COPY pub/ /root/
WORKDIR /root/
#NV ASPNETCORE_URLS="http://*:80"
EXPOSE 9001/tcp
ENTRYPOINT ["dotnet", "TcpEchoService.Server.dll"]
