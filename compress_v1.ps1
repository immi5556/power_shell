# https://stackoverflow.com/questions/41081488/how-do-i-exclude-a-folder-in-compress-archive

$YourDirToCompress="c:\temp"
$ZipFileResult="C:\temp10\result.zip"
$DirToExclude=@("test", "test1", "test2")

Get-ChildItem $YourDirToCompress -Directory  | 
           where { $_.Name -notin $DirToExclude} | 
              Compress-Archive -DestinationPath $ZipFileResult -Update
