Param(
    [switch]$Encode,
    [switch]$Decode,
    [string]$String,
    [string]$InputFile
)

if ($Encode) {
    if ($String) {
        try {
            $Bytes = [System.Text.Encoding]::Unicode.GetBytes($String)
            $EncodedText = [Convert]::ToBase64String($Bytes)
            Write-Output "Base64 Encoded Text: $EncodedText"
        }
        catch {
            Write-Error "Failed to encode the clear text string: $_"
        }
    }
    elseif ($InputFile) {
        try {
            $Content = Get-Content -Path $InputFile -Raw
            $Bytes = [System.Text.Encoding]::Unicode.GetBytes($Content)
            $EncodedText = [Convert]::ToBase64String($Bytes)
            Write-Output "Base64 Encoded Text: $EncodedText"
        }
        catch {
            Write-Error "Failed to read the input file or encode its content: $_"
        }
    }
    else {
        Write-Error "Please provide either -String or -InputFile parameter for encoding."
    }
}
elseif ($Decode) {
    if ($String) {
        try {
            $DecodedText = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($String))
            Write-Output "Decoded Text: $DecodedText"
        }
        catch {
            Write-Error "Failed to decode the Base64 string: $_"
        }
    }
    elseif ($InputFile) {
        try {
            $Content = Get-Content -Path $InputFile -Raw
            $DecodedText = [System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String($Content))
            Write-Output "Decoded Text: $DecodedText"
        }
        catch {
            Write-Error "Failed to read the input file or decode its content: $_"
        }
    }
    else {
        Write-Error "Please provide either -String or -InputFile parameter for decoding."
    }
}
else {
    Write-Error "Please specify either -Encode or -Decode."
}
