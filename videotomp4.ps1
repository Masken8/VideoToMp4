function videotomp4 {
        Param
        (
         [Parameter(Mandatory=$true, Position=0)]
         [string] $name
        )
        $baseName = (Get-Item $name).Basename
        $mp4Ext = -join($baseName, ".mp4")
        ffmpeg -i $name $mp4Ext
        explorer /select,$mp4Ext
}
