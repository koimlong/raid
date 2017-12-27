@echo off

echo �����ļ������ֱ𴴽���Ӧ��xml js css
echo.

SET /p FileName="FileName:"

REM create xml file
echo.
echo ���� %FileName%.xml

choice /C yn /M  [ȷ��,ȡ��]

if errorlevel 2 goto xml_no
if errorlevel 1 goto xml_yes

:xml_yes

if not exist "%CD%\layout\custom_game\%FileName%.xml" (
echo ^<root^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo		^<styles^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo			^<include src=^"s2r://panorama/styles/dotastyles.vcss_c^" /^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo			^<include src=^"file://{resources}/styles/custom_game/koim.css^" /^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo			^<include src=^"file://{resources}/styles/custom_game/%FileName%.css^" /^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo		^</styles^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo		^<scripts^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo			^<include src=^"file://{resources}/scripts/custom_game/%FileName%.js^" /^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo		^</scripts^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo		^<Panel hittest=^"false^" ^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo		^</Panel^>>>"%CD%\layout\custom_game\%FileName%.xml"
echo ^</root^>>>"%CD%\layout\custom_game\%FileName%.xml"
) else (
	echo %FileName%.xml �Ѵ����޷�����
)

:xml_no


REM create js file 
echo.
echo ���� %FileName%.js

choice /C yn /M  [ȷ��,ȡ��]

if errorlevel 2 goto js_no
if errorlevel 1 goto js_yes

:js_yes

if not exist "%CD%\scripts\custom_game\%FileName%.js" (
	echo ^"use strict^";>>"%CD%\scripts\custom_game\%FileName%.js"
	echo.>>"%CD%\scripts\custom_game\%FileName%.js"
	echo ^(function^(^){>>"%CD%\scripts\custom_game\%FileName%.js"
	echo }^)^(^)>>"%CD%\scripts\custom_game\%FileName%.js"
) else (
	echo %FileName%.js �Ѵ����޷�����
)

:js_no


REM create css file 
echo.
echo ���� %FileName%.css

choice /C yn /M  [ȷ��,ȡ��]

if errorlevel 2 goto css_no
if errorlevel 1 goto css_yes

:css_yes

if not exist "%CD%\styles\custom_game\%FileName%.css" (
	echo.>"%CD%\styles\custom_game\%FileName%.css"
) else (
	echo %FileName%.css �Ѵ����޷�����
)

:css_no

REM echo "haha">"%CD%\%FileName%"

pause