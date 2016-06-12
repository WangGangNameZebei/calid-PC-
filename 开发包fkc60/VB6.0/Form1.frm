VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5160
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7530
   LinkTopic       =   "Form1"
   ScaleHeight     =   5160
   ScaleWidth      =   7530
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin VB.CommandButton Command9 
      Caption         =   "Command9"
      Height          =   495
      Left            =   120
      TabIndex        =   13
      Top             =   3720
      Width           =   1215
   End
   Begin VB.TextBox Text5 
      Height          =   495
      Left            =   4920
      TabIndex        =   12
      Text            =   "Text5"
      Top             =   1200
      Width           =   1215
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   3600
      TabIndex        =   11
      Text            =   "Text4"
      Top             =   1200
      Width           =   1215
   End
   Begin VB.CommandButton Command8 
      Caption         =   "USB_Read"
      Height          =   495
      Left            =   120
      TabIndex        =   10
      Top             =   3240
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
      Caption         =   "USB_Authentication"
      Height          =   495
      Left            =   120
      TabIndex        =   9
      Top             =   2760
      Width           =   1455
   End
   Begin VB.CommandButton Command6 
      Caption         =   "close com3"
      Height          =   495
      Left            =   1440
      TabIndex        =   8
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton Command5 
      Caption         =   "USB_RequestEx"
      Height          =   495
      Left            =   120
      TabIndex        =   7
      Top             =   2280
      Width           =   1455
   End
   Begin VB.CommandButton Command4 
      Caption         =   "open com3"
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   1680
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   375
      Left            =   1200
      TabIndex        =   5
      Text            =   "ffffffffffff"
      Top             =   0
      Width           =   1935
   End
   Begin VB.CommandButton Command3 
      Caption         =   "¶ÁÐ´Æ÷ÃÜÂë"
      Height          =   495
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   1320
      TabIndex        =   3
      Text            =   "Text2"
      Top             =   600
      Width           =   4695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "·¢Éù"
      Height          =   375
      Left            =   3240
      TabIndex        =   2
      Top             =   0
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   1680
      TabIndex        =   1
      Text            =   "3"
      Top             =   2400
      Width           =   4695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "¶Á¿¨"
      Height          =   375
      Left            =   0
      TabIndex        =   0
      Top             =   600
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'Private Declare Function WriteCard Lib "Ic_dll.dll" (ByVal port As Integer, ByVal setck As Integer, ByVal block As Integer, ByVal card As String) As Boolean
'Private Declare Function SetPassA Lib "Ic_dll.dll" (ByVal port As Integer, ByVal pass As String) As Boolean
'Private Declare Function ReadCard Lib "Ic_dll.dll" (ByVal port As Integer, ByVal SectorNo As Integer, ByVal BlockNo As Integer, ByVal Result As String) As Boolean
Private Declare Function USB_DevInit Lib "fkc60.dll" (ByVal port As Integer) As Boolean
Private Declare Function USB_BeepExA Lib "fkc60.dll" (ByVal ms As Integer) As Boolean
Private Declare Function USB_RequestEx Lib "fkc60.dll" (ByVal result As String) As Integer
Private Declare Function USB_Authentication Lib "fkc60.dll" (ByVal mode As Integer, ByVal secnr As Integer, ByVal keysnr As String) As Boolean
Private Declare Function USB_DevClose Lib "fkc60.dll" () As Boolean
Private Declare Function USB_Read Lib "fkc60.dll" (ByVal secnr As Integer, ByVal blonr As Integer, ByVal result As String) As Boolean
Private Declare Function USB_Write Lib "fkc60.dll" (ByVal secnr As Integer, ByVal blonr As Integer, ByVal cinfo As String) As Boolean



Private Sub Command2_Click()
If USB_BeepExA(5) Then
 MsgBox "ok"
 Else
 MsgBox "error"
 End If
End Sub

Private Sub Command4_Click()
If USB_DevInit(3) Then
MsgBox "Ok"
Else
MsgBox "Error"
End If
End Sub

Private Sub Command5_Click()
Dim astr As String * 9
Dim Aint As Integer
Aint = USB_RequestEx(astr)
If Aint = 1 Then
  Text1.Text = astr
  MsgBox "ok"
  Else
  MsgBox "error"
  End If

End Sub

Private Sub Command6_Click()
  If USB_DevClose() Then
     MsgBox "OK"
  Else
     MsgBox "Error"
  End If
End Sub

Private Sub Command7_Click()
If USB_Authentication(0, 0, Text1.Text) Then
   MsgBox "OK"
Else
   MsgBox "Error"
End If
End Sub

Private Sub Command8_Click()
Dim astr As String * 33
  If USB_Read(0, 1, astr) Then
     Text1.Text = astr
     MsgBox "OK"
  Else
     MsgBox "error"
  End If
End Sub

Private Sub Command9_Click()
  If USB_Write(0, 1, Text1.Text) Then
    MsgBox "OK"
  Else
    MsgBox "Error"
  End If
End Sub
