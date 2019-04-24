Param([parameter()]
   $ClearText,
   $Base64)

 
if ($ClearText){
$Bytes = [System.Text.Encoding]::Unicode.GetBytes($ClearText)
$EncodedText =[Convert]::ToBase64String($Bytes)
$EncodedText
}



elseif($Base64){
$DecodedText = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($Base64))
$DecodedText
}


else{
Write-host "-Base64 <Base64 encoded string.>"
Write-host "-ClearText <Clear text string.>"
}

