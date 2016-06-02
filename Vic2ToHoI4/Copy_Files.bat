copy "Data_Files\configuration.txt" "release\configuration.txt"
copy "Data_Files\readme.txt" "release\readme.txt"
copy "Data_Files\merge_nations.txt" "release\merge_nations.txt"
copy "Data_Files\province_mappings.txt" "release\province_mappings.txt
copy "Data_Files\country_mappings.txt" "release\country_mappings.txt
copy "Data_Files\governmentMapping.txt" "release\governmentMapping.txt
copy "Data_Files\license.txt" "release\license.txt"
copy "Data_Files\tech_mapping.txt" "release\tech_mapping.txt"
copy "Data_Files\unit_mapping.txt" "release\unit_mapping.txt"
copy "Data_Files\culture_map.txt" "release\culture_map.txt"
copy "Data_Files\FAQ.txt" "release\FAQ.txt"

del release\changelog.txt
git log --oneline --decorate >> release/log.txt
(for /f "delims=" %%i in (release/log.txt) do @echo %%i)>release/changelog.txt
del release\log.txt

del "Release\blankMod" /Q
rmdir "Release\blankMod" /S /Q
mkdir "release\blankMod"
mkdir "release\blankMod\output"
mkdir "release\blankMod\output\history"
mkdir "release\blankMod\output\history\provinces"
mkdir "release\blankMod\output\history\countries"

rem xcopy "Data_Files\history\provinces" "release\blankmod\output\history\provinces" /Y /E /I
rem xcopy "Data_Files\countries" "release\blankmod\output\common\countries" /Y /E /I
rem copy "Data_Files\countries.txt" "release\blankMod\output\common\countries.txt"