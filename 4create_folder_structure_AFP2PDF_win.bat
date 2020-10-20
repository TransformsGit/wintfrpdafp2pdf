@ECHO OFF

Set dir=E:\OutputTransformAFP2PDF\win\output\
Echo Deleting all files from %dir%
del %dir%\* /F /Q

Echo Deleting all folders from %dir%
for /d %%p in (%dir%\*) Do rd /Q /S "%%p"
@echo Folder deleted.

mkdir E:\OutputTransformAFP2PDF\win\output\out_PDF\TestFiles
echo mkdir E:\OutputTransformAFP2PDF\win\output\out_PDF\TestFiles

mkdir E:\OutputTransformAFP2PDF\win\output\out_TIFF\MF
echo mkdir E:\OutputTransformAFP2PDF\win\output\out_TIFF\MF

c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformAFP2PDF\win\output\out_PDF\TestFiles\ /s /i
c:\Windows\System32\xcopy.exe /T /e e:\TestFiles_folder_structure\TestFiles\* E:\OutputTransformAFP2PDF\win\output\out_TIFF\MasterFiles\ /s /i

echo Folder structure succesfully done!