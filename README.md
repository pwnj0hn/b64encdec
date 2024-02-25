# Base64 Encoding and Decoding Script

This PowerShell script provides functionality for encoding and decoding text to and from Base64 format. It supports encoding/decoding from either a clear text string or a file.

## Usage
```
.\b64encdec.ps1 -Encode -String <ClearText>
```
Encodes the specified clear text string to Base64.
```
.\b64encdec.ps1 -Encode -InputFile <FilePath>
```
Encodes the content of the specified text file to Base64.
```
.\b64encdec.ps1 -Decode -String <Base64EncodedString>
```
Decodes the specified Base64 encoded string to clear text.
```
.\b64encdec.ps1 -Decode -InputFile <FilePath>
```
Decodes the content of the specified text file (assumed to be Base64 encoded) to clear text.

### Parameters
```
-Encode: Specifies encoding mode.
-Decode: Specifies decoding mode.
-String <ClearText>: Specifies the clear text string for encoding or the Base64 encoded string for decoding.
-InputFile <FilePath>: Specifies the path to the input text file for encoding or decoding.
```
### Example

```
.\b64encdec.ps1 -Encode -String "Hello, world!"
```
This will encode the string "Hello, world!" to Base64 format.
```
.\b64encdec.ps1 -Decode -InputFile "encoded.txt"
```
This will decode the content of the file "encoded.txt" from Base64 format to clear text.
