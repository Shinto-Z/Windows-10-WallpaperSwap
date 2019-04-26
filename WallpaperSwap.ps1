[CmdletBinding()]
Param(
[Parameter()]
[string]$destImg
)

$VIDEO=Get-Item HKLM:\SYSTEM\CurrentControlSet\Control\UnitedVideo\CONTROL\VIDEO|Get-ChildItem

$DISPLAYS=$VIDEO|Get-ChildItem

foreach($D in $DISPLAYS){

   $X=$D|Get-ItemProperty -Name Attach.RelativeX -ErrorAction SilentlyContinue|Select-Object -Property Attach.RelativeX
   $Y=$D|Get-ItemProperty -Name Attach.RelativeY -ErrorAction SilentlyContinue|Select-Object -Property Attach.RelativeY
   $XRES=$D|Get-ItemProperty -Name DefaultSettings.XResolution -ErrorAction SilentlyContinue|Select-Object -Property DefaultSettings.XResolution
   $YRES=$D|Get-ItemProperty -Name DefaultSettings.YResolution -ErrorAction SilentlyContinue|Select-Object -Property DefaultSettings.YResolution

   $X = $X.("Attach.RelativeX")
   $Y = $Y.("Attach.RelativeY")
   $XRES = $XRES.("DefaultSettings.XResolution")
   $YRES = $YRES.("DefaultSettings.YResolution")

   if(($X -eq 0) -and ($Y -eq 0)){

      $w = $XRES 
      $h = $YRES

   }

}

if($w -eq 1920 -and $h -eq 1080){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1920_1080.jpg -Destination $destImg
}
elseif($w -eq 1920 -and $h -eq 1040){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1920_1040.jpg -Destination $destImg
}
elseif($w -eq 1768 -and $h -eq 992){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1768_992.jpg -Destination $destImg
}
elseif($w -eq 1680 -and $h -eq 1050){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1680_1050.jpg -Destination $destImg
}
elseif($w -eq 1600 -and $h -eq 1024){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1600_1024.jpg -Destination $destImg
}
elseif($w -eq 1600 -and $h -eq 900){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1600_900.jpg -Destination $destImg
}
elseif($w -eq 1440 -and $h -eq 900){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1440_900.jpg -Destination $destImg
}
elseif($w -eq 1366 -and $h -eq 768){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1366_768.jpg -Destination $destImg
}
elseif($w -eq 1360 -and $h -eq 768){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1360_768.jpg -Destination $destImg
}
elseif($w -eq 1280 -and $h -eq 1024){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1280_1024.jpg -Destination $destImg
}
elseif($w -eq 1280 -and $h -eq 960){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1280_960.jpg -Destination $destImg
}
elseif($w -eq 1280 -and $h -eq 800){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1280_800.jpg -Destination $destImg
}
elseif($w -eq 1280 -and $h -eq 768){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1280_768.jpg -Destination $destImg
}
elseif($w -eq 1280 -and $h -eq 720){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1280_720.jpg -Destination $destImg
}
elseif($w -eq 1176 -and $h -eq 664){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1176_664.jpg -Destination $destImg
}
elseif($w -eq 1152 -and $h -eq 864){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1152_864.jpg -Destination $destImg
}
elseif($w -eq 1024 -and $h -eq 768){
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_1024_768.jpg -Destination $destImg
}
else{
   #800 x 600
   Copy-Item -Path C:\Windows\Web\Screen\bg2019\bg_800_600.jpg -Destination $destImg
}