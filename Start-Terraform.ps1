$CurLoc = (Get-Location).Path
$CurLoc

foreach ( $fn in ('main.tf', 'variable.tf', 'output.tf')) {
    $tPath = $CurLoc + '\' + $fn
    if ( -not (Test-path -Path $tPath)) {
        New-Item -Path $CurLoc -Name $fn -ItemType File
    }
}
