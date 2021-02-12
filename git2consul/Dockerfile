# escape=`
FROM mcr.microsoft.com/windows/servercore:ltsc2019 as git2consul19
ENV GIT_VERSION 2.30.1
ENV GIT_PATCH_VERSION 2
RUN mkdir C:\git2consul\cache
ADD chk.ps1 /windows/temp/chk.ps1
ADD gitconsul.json /git2consul/gitconsul.json
RUN powershell.exe -executionpolicy bypass c:\windows\temp\chk.ps1
RUN npm install git2consul-windows -g
WORKDIR /nodejs/node_modules/git2consul-windows