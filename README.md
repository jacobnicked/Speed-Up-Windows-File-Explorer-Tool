# Speed Up Windows File Explorer Tool

**Speed Up Windows File Explorer Tool** helps prevent slow folder loading. This issue occurs when Windows has not saved information about a folder yet and tries to determine its type (e.g., music, pictures, documents) by scanning every single file inside. If a folder contains thousands of files, this process takes a long time, causing the folder to load slowly and making your hard disk drive (HDD) work overtime.

---

To apply a fix by creating a registry file, follow these steps:

1. Open a text editor program (e.g., Notepad).
2. Copy and paste the code below into the text editor.
3. Save the file with a `*.reg` extension. You can name it whatever you want.
4. Open the file and confirm the changes.
   - A restart of File Explorer or your PC might be required.

```reg
Windows Registry Editor Version 5.00

[Computer\HKEY_CURRENT_USER\SOFTWARE\Classes\Local Settings\Software\Microsoft\Windows\Shell\Bags\AllFolders\Shell]
"FolderType"="NotSpecified"
```
