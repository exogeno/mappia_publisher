
set OSGEO=F:\Danilo\Programas\QGIS_34_15
set PATH=%OSGEO%\apps\Python37\Scripts\;%PATH%
SET OSGEO4W_ROOT=%OSGEO%
call "%OSGEO4W_ROOT%"\bin\o4w_env.bat
call "%OSGEO4W_ROOT%"\apps\grass\grass78\etc\env.bat

path %PATH%;%OSGEO4W_ROOT%\apps\qgis\bin
path %PATH%;%OSGEO4W_ROOT%\apps\grass\grass78\lib
path %PATH%;%OSGEO%\apps\Qt5\bin
path %PATH%;%OSGEO%\apps\Python37\Scripts

set PYTHONPATH=%PYTHONPATH%;%OSGEO4W_ROOT%\apps\qgis\python
set PYTHONHOME=%OSGEO4W_ROOT%\apps\Python37

set PATH=F:\Danilo\Programas\Git\bin\;%PATH%
path %OSGEO4W_ROOT%\apps\qgis\bin;%PATH%
set QGIS_PREFIX_PATH=%OSGEO4W_ROOT:\=/%/apps/qgis
set GDAL_FILENAME_IS_UTF8=YES
set VSI_CACHE=TRUE
set VSI_CACHE_SIZE=1000000
set QT_PLUGIN_PATH=%OSGEO4W_ROOT%\apps\qgis\qtplugins;%OSGEO4W_ROOT%\apps\qt5\plugins
set QGIS_PLUGINPATH=%OSGEO4W_ROOT%\apps\qgis\qtplugins;%OSGEO4W_ROOT%\apps\qt5\plugins
rem easy_install pb_tool
rem python -m pip install pb_tool

%~d0
cd %~dp0../mappia_publisher/

call pb_tool deploy -y

cd %~dp0