'----------------------------------------------------------
' Plugin for OCS Inventory NG 2.x
' Script :		
' Version :		1.00
' Date :		
' Author :		Valentin DEVILLE
'----------------------------------------------------------
' OS checked [X] on	32b	64b	(Professionnal edition)
'	Windows XP		[ ]
'	Windows Vista	[ ]	[ ]
'	Windows 7		[ ]	[ ]
'	Windows 8.1		[ ]	[ ]	
'	Windows 10		[ ]	[ ]
'	Windows 2k8R2		[ ]
'	Windows 2k12R2		[ ]
'	Windows 2k16		[ ]
' ---------------------------------------------------------
' NOTE : No checked on Windows 8
' ---------------------------------------------------------
On Error Resume Next

'Change CUSTOM_PATH with your own file path 
file = Array("C:\CUSTOM_PATH_2", "C:\CUSTOM_PATH_1")

Set fso = CreateObject("Scripting.FileSystemObject")

For each item in file
    If (fso.FileExists(item)) Then
        exist = "Yes"
    Else
        exist = "No"
    End If

    Wscript.Echo _
    "<CHECKFILES>" & VbCrLf &_
    "<PATH>" & item & "</PATH>" & VbCrLf &_
    "<EXIST>" & exist & "</EXIST>" & VbCrLf &_
    "</CHECKFILES>"
Next
