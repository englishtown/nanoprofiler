& 'C:\Program Files (x86)\MSBuild\14.0\Bin\msbuild.exe' NanoProfiler2.Net45.sln /p:Configuration=Release
Remove-Item .\NanoProfiler.Data\bin\net45 -recurse -force
Copy-Item .\NanoProfiler.Data\bin\Release .\NanoProfiler.Data\bin\net45 -recurse

& 'C:\Program Files (x86)\MSBuild\14.0\Bin\msbuild.exe' NanoProfiler2.sln /p:Configuration=Release
Remove-Item .\NanoProfiler.Data\bin\net40 -recurse -force
Copy-Item .\NanoProfiler.Data\bin\Release .\NanoProfiler.Data\bin\net40 -recurse

.\packages\NUnit.Runners.2.6.4\tools\nunit-console.exe .\Tests\NanoProfiler.Tests\bin\Release\NanoProfiler.Tests.dll
.\packages\NUnit.Runners.2.6.4\tools\nunit-console.exe /cleanup
