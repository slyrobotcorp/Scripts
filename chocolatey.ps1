# Install chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Once chocolatey has been installed, start the other processes

choco install sql-server-management-studio -y

# Install Azure Data Studio

choco install azure-data-studio -y

# Install web platform installer

choco install webpi -y

# Install notepad plus plus

choco install notepadplusplus -y

# Install Octopus Deploy Tentacle

choco install octopusdeploy.tentacle -y

if (Test-Path -Path "C:\Installer") {

    Remove-Item -Path "C:\Installer" -Recurse -Force

}

# New-Item -Path "C:\Installer" -ItemType Directory -Force

# Download the installer file for Microsoft Visual Studio Tools 2017

# $WebClient = New-Object System.Net.WebClient

# $WebClient.DownloadFile("https://download.microsoft.com/download/0/6/6/0660AD34-264B-4ED2-B975-ABFE255DAD47/vsta_setup.exe","C:\Installer\file")

# Install Url rewriter

choco install urlrewrite -y

# Install ODBC driver

choco install sqlserver-odbcdriver -y

# Install sql native client

choco install sql2012.nativeclient -y

# Visual C++ Redistributable Packages for Visual Studio 2013

choco install vcredist2013 -y

# Visual C++ Redistributable Packages for Visual Studio 2017

choco install vcredist2017 -y