B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.85
@EndOfDesignText@
#Region Shared Files
#CustomBuildAction: folders ready, %WINDIR%\System32\Robocopy.exe,"..\..\Shared Files" "..\Files"
'Ctrl + click to sync files: ide://run?file=%WINDIR%\System32\Robocopy.exe&args=..\..\Shared+Files&args=..\Files&FilesSync=True
#End Region

'Ctrl + click to export as zip: ide://run?File=%B4X%\Zipper.jar&Args=Project.zip

Sub Class_Globals
	Private Root As B4XView
	Private xui As XUI
	
	Private AS_TextFieldAdvanced1 As AS_TextFieldAdvanced
	Private AS_TextFieldAdvanced2 As AS_TextFieldAdvanced
End Sub

Public Sub Initialize
	
End Sub

'This event will be called once, before the page becomes visible.
Private Sub B4XPage_Created (Root1 As B4XView)
	Root = Root1
	Root.LoadLayout("frm_main")
	
	B4XPages.SetTitle(Me,"AS TextFieldAdvanced Example")
	
	#If B4I
	Wait For B4XPage_Resize (Width As Int, Height As Int)
	B4XPage_Resize(Width,Height)
	#End If

	AS_TextFieldAdvanced1.Hint.Text = "abc@email.com"
	AS_TextFieldAdvanced2.Hint.Text = "Your password"

	AS_TextFieldAdvanced1.LeadingIcon.Icon = AS_TextFieldAdvanced1.FontToBitmap(Chr(0xE0BE),True,25,xui.Color_Black)
	AS_TextFieldAdvanced2.LeadingIcon.Icon = AS_TextFieldAdvanced1.FontToBitmap(Chr(0xE899),True,25,xui.Color_Black)

	AS_TextFieldAdvanced1.LeadingIcon.Visible = True
	AS_TextFieldAdvanced2.LeadingIcon.Visible = True

	AS_TextFieldAdvanced1.Refresh
	AS_TextFieldAdvanced2.Refresh

End Sub


#If B4I
Private Sub B4XPage_Resize (Width As Int, Height As Int)
	
End Sub
#End If
