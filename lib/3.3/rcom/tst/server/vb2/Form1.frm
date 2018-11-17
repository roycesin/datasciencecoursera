VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   840
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
  Dim r As InternalConnector
  Set r = New InternalConnector
  r.EvaluateNoReturn "x<-1:100"
  r.EvaluateNoReturn "y<-sin(x)"
  r.EvaluateNoReturn "plot(y)"
  r.SetSymbol "a0", 123
  r.SetSymbol "a1", 123.123
  r.SetSymbol "a2", "a123"
  MsgBox "a0 = " & r.GetSymbol("a0") & vbCrLf & _
         "a1 = " & r.GetSymbol("a1") & vbCrLf & _
         "a2 = " & r.GetSymbol("a2")
  MsgBox "a0 = " & r.Evaluate("a0+a1")
End Sub
