$key_path = "HKLM:\SOFTWARE\Classes\Applications\photoviewer.dll\shell\open"
New-Item -Path $key_path -Force | Out-Null
New-ItemProperty -Path $key_path -Name "MuiVerb" -Value "@photoviewer.dll,-3043" -PropertyType "String" | Out-Null

$key_path = "HKLM:\SOFTWARE\Classes\Applications\photoviewer.dll\shell\open\command"
New-Item -Path $key_path -Force | Out-Null
$command = "%SystemRoot%\System32\rundll32.exe ""%ProgramFiles%\Windows Photo Viewer\PhotoViewer.dll"", ImageView_Fullscreen %1"
New-ItemProperty -Path $key_path -Name "(default)" -Value $command -PropertyType "ExpandString" | Out-Null

$key_path = "HKLM:\SOFTWARE\Microsoft\Windows Photo Viewer\Capabilities\FileAssociations"
New-Item -Path $key_path -Force | Out-Null
New-ItemProperty -Path $key_path -Name ".tif" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".tiff" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".jpg" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".png" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".jpeg" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".bmp" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".jpe" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".jfif" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".dib" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".ico" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".gif" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
New-ItemProperty -Path $key_path -Name ".tga" -Value "PhotoViewer.FileAssoc.Tiff" -PropertyType "String" | Out-Null
