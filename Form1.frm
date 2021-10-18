VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Objek Transparan"
   ClientHeight    =   1320
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9855
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1320
   ScaleWidth      =   9855
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Exit"
      Height          =   375
      Left            =   8280
      TabIndex        =   1
      Top             =   840
      Width           =   1455
   End
   Begin MSComctlLib.Slider Slider1 
      Height          =   675
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   9615
      _ExtentX        =   16960
      _ExtentY        =   1191
      _Version        =   393216
      Max             =   255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
    End
End Sub

Private Sub Form_Load()
    Slider1.Value = 255
End Sub

Private Sub Slider1_Scroll()
    MakeTransparent Me.hwnd, Slider1.Value
End Sub
