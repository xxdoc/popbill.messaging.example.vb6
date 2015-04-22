VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form frmExample 
   Caption         =   "팝빌 메시징 SDK 예제"
   ClientHeight    =   11115
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10920
   LinkTopic       =   "Form1"
   ScaleHeight     =   11115
   ScaleWidth      =   10920
   StartUpPosition =   3  'Windows 기본값
   Begin VB.Frame Frame10 
      Caption         =   "MMS 전송기능"
      Height          =   945
      Left            =   120
      TabIndex        =   39
      Top             =   4920
      Width           =   3465
      Begin VB.CommandButton btnSendMMS 
         Caption         =   "1건 전송"
         Height          =   465
         Left            =   120
         TabIndex        =   41
         Top             =   315
         Width           =   930
      End
      Begin VB.CommandButton btnSendMMS_Same 
         Caption         =   "동보 전송"
         Height          =   465
         Left            =   1125
         TabIndex        =   40
         Top             =   315
         Width           =   1110
      End
   End
   Begin VB.CommandButton btnUnitCost_MMS 
      Caption         =   "MMS 전송단가 확인"
      Height          =   495
      Left            =   2460
      TabIndex        =   38
      Top             =   2280
      Width           =   1815
   End
   Begin VB.Frame Frame6 
      Caption         =   " 팝빌 메시징 관련 기능"
      Height          =   7695
      Left            =   75
      TabIndex        =   16
      Top             =   3240
      Width           =   10725
      Begin VB.CommandButton btnSearchPopup 
         Caption         =   "전송내역조회 팝업"
         Height          =   390
         Left            =   8655
         TabIndex        =   37
         Top             =   195
         Width           =   1875
      End
      Begin VB.TextBox txtResult 
         Height          =   4680
         Left            =   120
         MultiLine       =   -1  'True
         ScrollBars      =   3  '양방향
         TabIndex        =   36
         Top             =   2760
         Width           =   10455
      End
      Begin VB.CommandButton btnCancelReserve 
         Caption         =   "예약 전송 취소"
         Height          =   405
         Left            =   8880
         TabIndex        =   35
         Top             =   2040
         Width           =   1545
      End
      Begin VB.CommandButton btnGetMessages 
         Caption         =   "전송상태확인"
         Height          =   405
         Left            =   7200
         TabIndex        =   34
         Top             =   2040
         Width           =   1545
      End
      Begin VB.Frame Frame9 
         Caption         =   " 길이인식 자동 문자 전송 "
         Height          =   945
         Left            =   7080
         TabIndex        =   30
         Top             =   720
         Width           =   3465
         Begin VB.CommandButton btnSendXMS_One 
            Caption         =   "1건 전송"
            Height          =   465
            Left            =   120
            TabIndex        =   33
            Top             =   315
            Width           =   930
         End
         Begin VB.CommandButton btnSendXMS_Hundred 
            Caption         =   "100건 전송"
            Height          =   465
            Left            =   1125
            TabIndex        =   32
            Top             =   315
            Width           =   1110
         End
         Begin VB.CommandButton btnSendXMS_Same 
            Caption         =   "동보전송"
            Height          =   465
            Left            =   2310
            TabIndex        =   31
            Top             =   315
            Width           =   1020
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   " 장문 문자 전송 "
         Height          =   945
         Left            =   3570
         TabIndex        =   26
         Top             =   735
         Width           =   3465
         Begin VB.CommandButton btnSendLMS_One 
            Caption         =   "1건 전송"
            Height          =   465
            Left            =   120
            TabIndex        =   29
            Top             =   315
            Width           =   930
         End
         Begin VB.CommandButton btnSendLMS_Hundred 
            Caption         =   "100건 전송"
            Height          =   465
            Left            =   1125
            TabIndex        =   28
            Top             =   315
            Width           =   1110
         End
         Begin VB.CommandButton btnSendLMS_Same 
            Caption         =   "동보전송"
            Height          =   465
            Left            =   2310
            TabIndex        =   27
            Top             =   315
            Width           =   1020
         End
      End
      Begin VB.TextBox txtReceiptNum 
         Height          =   315
         Left            =   4485
         TabIndex        =   25
         Top             =   2145
         Width           =   2610
      End
      Begin VB.Frame Frame7 
         Caption         =   " 단문 문자 전송 "
         Height          =   945
         Left            =   45
         TabIndex        =   19
         Top             =   735
         Width           =   3465
         Begin VB.CommandButton btnSendSMS_Same 
            Caption         =   "동보전송"
            Height          =   465
            Left            =   2310
            TabIndex        =   22
            Top             =   315
            Width           =   1020
         End
         Begin VB.CommandButton btnSendSMS_hundredd 
            Caption         =   "100건 전송"
            Height          =   465
            Left            =   1125
            TabIndex        =   21
            Top             =   315
            Width           =   1110
         End
         Begin VB.CommandButton btnSendSMS_One 
            Caption         =   "1건 전송"
            Height          =   465
            Left            =   120
            TabIndex        =   20
            Top             =   315
            Width           =   930
         End
      End
      Begin VB.TextBox txtReserveDT 
         Height          =   315
         Left            =   3060
         TabIndex        =   17
         Top             =   255
         Width           =   3105
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "접수번호 : "
         Height          =   180
         Left            =   3585
         TabIndex        =   24
         Top             =   2235
         Width           =   900
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "예약시간(yyyyMMddHHmmss) : "
         Height          =   180
         Left            =   225
         TabIndex        =   18
         Top             =   330
         Width           =   2790
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   " 팝빌 기본 API "
      Height          =   2415
      Left            =   120
      TabIndex        =   4
      Top             =   600
      Width           =   10680
      Begin VB.Frame Frame2 
         Caption         =   " 회원정보"
         Height          =   1575
         Left            =   120
         TabIndex        =   12
         Top             =   240
         Width           =   1935
         Begin VB.CommandButton btnCheckIsMember 
            Caption         =   "가입 여부 확인"
            Height          =   495
            Left            =   240
            TabIndex        =   14
            Top             =   360
            Width           =   1455
         End
         Begin VB.CommandButton btnJoinMember 
            Caption         =   "회원 가입"
            Height          =   495
            Left            =   240
            TabIndex        =   13
            Top             =   960
            Width           =   1455
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   " 포인트 관련"
         Height          =   2055
         Left            =   2160
         TabIndex        =   10
         Top             =   240
         Width           =   2160
         Begin VB.CommandButton btnUnitCost_LMS 
            Caption         =   "LMS 전송단가 확인"
            Height          =   495
            Left            =   165
            TabIndex        =   15
            Top             =   855
            Width           =   1815
         End
         Begin VB.CommandButton btnUnitCost 
            Caption         =   "SMS 전송단가 확인"
            Height          =   495
            Left            =   150
            TabIndex        =   11
            Top             =   240
            Width           =   1815
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   " 파트너 관련"
         Height          =   1575
         Left            =   4560
         TabIndex        =   8
         Top             =   240
         Width           =   2535
         Begin VB.CommandButton btnGetBalance 
            Caption         =   "잔여 포인트 확인"
            Height          =   495
            Left            =   120
            TabIndex        =   23
            Top             =   270
            Width           =   1815
         End
         Begin VB.CommandButton btnGetPartnerBalance 
            Caption         =   "파트너 잔여 포인트 확인"
            Height          =   495
            Left            =   120
            TabIndex        =   9
            Top             =   960
            Width           =   2295
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   " 기타"
         Height          =   1575
         Left            =   7320
         TabIndex        =   5
         Top             =   240
         Width           =   2175
         Begin VB.CommandButton btnGetPopbillURL 
            Caption         =   " 팝빌 기본 URL 확인"
            Height          =   495
            Left            =   120
            TabIndex        =   7
            Top             =   840
            Width           =   1935
         End
         Begin VB.ComboBox cboPopbillTOGO 
            Height          =   300
            Left            =   120
            TabIndex        =   6
            Text            =   "LOGIN"
            Top             =   360
            Width           =   1935
         End
      End
   End
   Begin VB.TextBox txtUserID 
      Height          =   315
      Left            =   4560
      TabIndex        =   3
      Text            =   "testkorea"
      Top             =   165
      Width           =   1935
   End
   Begin VB.TextBox txtCorpNum 
      Height          =   315
      Left            =   1335
      TabIndex        =   1
      Text            =   "1234567890"
      Top             =   180
      Width           =   1935
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   9840
      Top             =   120
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "팝빌아이디 : "
      Height          =   180
      Left            =   3480
      TabIndex        =   2
      Top             =   240
      Width           =   1080
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "사업자번호 : "
      Height          =   180
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   1080
   End
End
Attribute VB_Name = "frmExample"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'연동아이디
Private Const LinkID = "TESTER"
'비밀키. 유출에 주의하시기 바랍니다.
Private Const SecretKey = "SwWxqU+0TErBXy/9TVjIPEnI0VTUMMSQZtJf3Ed8q3I="

Private MessageService As New PBMSGService
Private Sub btnCancelReserve_Click()
    Dim Response As PBResponse
    
    Set Response = MessageService.CancelReserve(txtCorpNum.Text, txtReceiptNum.Text, txtUserID.Text)
    
    If Response Is Nothing Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox (Response.message)
End Sub

Private Sub btnCheckIsMember_Click()
    Dim Response As PBResponse
    
    Set Response = MessageService.CheckIsMember(txtCorpNum.Text, LinkID)
    
    If Response Is Nothing Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox (Response.message)
End Sub


Private Sub btnGetBalance_Click()
    Dim balance As Double
    
    balance = MessageService.GetBalance(txtCorpNum.Text)
    
    If balance < 0 Then
        
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "잔여포인트 : " + CStr(balance)
    
    
End Sub


Private Sub btnGetMessages_Click()
    Dim sentMessages As Collection
    
    Set sentMessages = MessageService.GetMessages(txtCorpNum.Text, txtReceiptNum.Text, txtUserID.Text)
    
    If sentMessages Is Nothing Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    
    Dim sentMessage As PBSentMsg
    
    
    Dim tmp As String
    tmp = "state | subject | messageType | sendnum | receiveNum | receiveName | reserveDT | sendDT | sendResult" + vbCrLf
    
    For Each sentMessage In sentMessages
    
        tmp = tmp + CStr(sentMessage.state) + " | "
        tmp = tmp + sentMessage.Subject + " | "
        tmp = tmp + sentMessage.messageType + " | "
        'tmp = tmp + sentMessage.content + " | " ' 내용 표시는 길이관계상 예제에서 생략합니다.
        tmp = tmp + sentMessage.sendNum + " | "
        tmp = tmp + sentMessage.receiveNum + " | "
        tmp = tmp + sentMessage.receiveName + " | "
        tmp = tmp + sentMessage.reserveDT + " | "
        tmp = tmp + sentMessage.sendDT + " | "
        tmp = tmp + sentMessage.resultDT + " | "
        tmp = tmp + sentMessage.sendResult
        
        tmp = tmp + vbCrLf
    Next
    
    
    txtResult.Text = tmp
    
End Sub

Private Sub btnGetPartnerBalance_Click()
    Dim balance As Double
    
    balance = MessageService.GetPartnerBalance(txtCorpNum.Text)
    
    If balance < 0 Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "잔여포인트 : " + CStr(balance)
    
End Sub

Private Sub btnGetPopbillURL_Click()
    Dim url As String
    
    url = MessageService.GetPopbillURL(txtCorpNum.Text, txtUserID.Text, cboPopbillTOGO.Text)
    
    If url = "" Then
         MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    MsgBox "URL : " + vbCrLf + url
End Sub

Private Sub btnJoinMember_Click()
    Dim joinData As New PBJoinForm
    Dim Response As PBResponse
    
    joinData.LinkID = LinkID '연동 아이디
    joinData.CorpNum = "1231212312" '사업자번호 "-" 제외.
    joinData.CEOName = "대표자성명"
    joinData.CorpName = "회원상호"
    joinData.Addr = "주소"
    joinData.ZipCode = "500-100"
    joinData.BizType = "업태"
    joinData.BizClass = "업종"
    joinData.ID = "userid"      '6자 이상 20자 미만.
    joinData.PWD = "pwd_must_be_long_enough"    '6자 이상 20자 미만.
    joinData.ContactName = "담당자성명"
    joinData.ContactTEL = "02-999-9999"
    joinData.ContactHP = "010-1234-5678"
    joinData.ContactFAX = "02-999-9998"
    joinData.ContactEmail = "test@test.com"
    
    Set Response = MessageService.JoinMember(joinData)
    
    If Response Is Nothing Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox (Response.message)
    
    
End Sub

Private Sub btnSearchPopup_Click()
    Dim url As String
    
    url = MessageService.GetURL(txtCorpNum.Text, txtUserID.Text, "BOX")
    
    If url = "" Then
         MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    MsgBox "URL : " + vbCrLf + url
End Sub

Private Sub btnSendLMS_Hundred_Click()
    Dim Messages As New Collection
    
    Dim message As PBMessage
    
    Dim i As Integer
    
    For i = 0 To 100
        
        Set message = New PBMessage
        
        message.Sender = "07075106766"
        message.receiver = "11112222"
        message.receiverName = "수신자이름_" + CStr(i + 1)
        message.content = "발신 내용. 장문은 2000Byte로 길이가 조정되어 전송됩니다. 팝빌은 최고의 전자세금계산서 서비스를 제공하고 있습니다."
        message.Subject = "장문 제목입니다."
        
        Messages.Add message
    Next
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendLMS(txtCorpNum.Text, "", "", "", Messages, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
    
End Sub

Private Sub btnSendLMS_One_Click()
    
    Dim Messages As New Collection
    
    Dim message As New PBMessage
    
    message.Sender = "07075106766"
    message.receiver = "11112222"
    message.receiverName = "수신자이름"
    message.content = "발신 내용. 장문은 2000Byte로 길이가 조정되어 전송됩니다. 팝빌은 최고의 전자세금계산서 서비스를 제공하고 있습니다."
    message.Subject = "장문 제목입니다."
    
    Messages.Add message
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendLMS(txtCorpNum.Text, "", "", "", Messages, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
    
    
End Sub

Private Sub btnSendLMS_Same_Click()
        
    Dim Messages As New Collection
    
    Dim message As PBMessage
    
    Dim i As Integer
    
    For i = 0 To 100
        
        Set message = New PBMessage
        
        message.receiver = "11112222"
        message.receiverName = "수신자이름_" + CStr(i + 1)
        
        Messages.Add message
    Next
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendLMS(txtCorpNum.Text, "07075106766", "동보전송 제목", "발신 내용. 장문은 2000Byte로 길이가 조정되어 전송됩니다. 팝빌은 최고의 전자세금계산서 서비스를 제공하고 있습니다.", _
                                    Messages, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
End Sub

Private Sub btnSendMMS_Click()
    Dim Messages As New Collection
    Dim FilePaths As New Collection
        
    CommonDialog1.FileName = ""
    CommonDialog1.ShowOpen
    
    If CommonDialog1.FileName = "" Then Exit Sub
    
    FilePaths.Add CommonDialog1.FileName
    
    Dim message As New PBMessage
    
    message.Sender = "07075103710"
    message.receiver = "01043245117"
    message.receiverName = "수신자이름"
    message.content = "MMS 발신 테스트 내용."
    message.Subject = "메시지 제목"
    
    Messages.Add message
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendMMS(txtCorpNum.Text, "07075103710", "동보제목", "동보내용", Messages, FilePaths, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
    
End Sub

Private Sub btnSendMMS_Same_Click()
    Dim Messages As New Collection
    Dim FilePaths As New Collection
        
    CommonDialog1.FileName = ""
    CommonDialog1.ShowOpen
    
    If CommonDialog1.FileName = "" Then Exit Sub
    
    FilePaths.Add CommonDialog1.FileName
  
    Dim message As PBMessage
    Dim i As Integer
    
    For i = 0 To 100
        
        Set message = New PBMessage
        
        message.receiver = "010111222"
        message.receiverName = "수신자이름_" + CStr(i + 1)
        
        Messages.Add message
    Next
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendMMS(txtCorpNum.Text, "07075103710", "동보제목", "동보내용", Messages, FilePaths, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
    
    
End Sub

Private Sub btnSendSMS_hundredd_Click()
    Dim Messages As New Collection
    
    Dim message As PBMessage
    
    Dim i As Integer
    
    For i = 0 To 100
        
        Set message = New PBMessage
        
        message.Sender = "07075106766"
        message.receiver = "11112222"
        message.receiverName = "수신자이름_" + CStr(i + 1)
        message.content = "발신 내용. 단문은 90Byte로 길이가 조정되어 전송됩니다."
        
        Messages.Add message
    Next
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendSMS(txtCorpNum.Text, "07075103710", "", Messages, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
    
    
End Sub

Private Sub btnSendSMS_One_Click()
    
    Dim Messages As New Collection
    
    Dim message As New PBMessage
    
    message.Sender = "07075106766"
    message.receiver = "11112222"
    message.receiverName = "수신자이름"
    message.content = "발신 내용. 단문은 90Byte로 길이가 조정되어 전송됩니다."
    
    Messages.Add message
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendSMS(txtCorpNum.Text, "", "", Messages, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
    
    
End Sub

Private Sub btnSendSMS_Same_Click()
        
    Dim Messages As New Collection
    
    Dim message As PBMessage
    
    Dim i As Integer
    
    For i = 0 To 100
        
        Set message = New PBMessage
        
        message.receiver = "11112222"
        message.receiverName = "수신자이름_" + CStr(i + 1)
        
        Messages.Add message
    Next
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendSMS(txtCorpNum.Text, "07075106766", "동보전송 내용 90byte로 길이가 조정되며, Messages의 내용이 없는 수신건에 동보처리됩니다.", Messages, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
    
End Sub

Private Sub btnSendXMS_Hundred_Click()
    Dim Messages As New Collection
    
    Dim message As PBMessage
    
    Dim i As Integer
    
    For i = 0 To 50
        
        Set message = New PBMessage
        
        message.Sender = "07075106766"
        message.receiver = "11112222"
        message.receiverName = "수신자이름_" + CStr(i + 1)
        message.content = "발신 내용. 이 내용은 장문으로 전송될수 있도록 길이를 설정하였습니다. 팝빌은 국내 최고의 전자세금계산서 서비스 입니다."
        message.Subject = "장문 제목입니다."
        
        Messages.Add message
    Next
    
    For i = 0 To 50
        
        Set message = New PBMessage
        
        message.Sender = "07075106766"
        message.receiver = "11112222"
        message.receiverName = "수신자이름_" + CStr(i + 1)
        message.content = "발신 내용. 이 내용은 단문으로 전송됩니다."
        
        Messages.Add message
    Next
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendXMS(txtCorpNum.Text, "", "", "", Messages, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
End Sub

Private Sub btnSendXMS_One_Click()
    
    Dim Messages As New Collection
    
    Dim message As New PBMessage
    
    message.Sender = "07075106766"
    message.receiver = "01041680206"
    message.receiverName = "수신자이름"
    message.content = "자동인식 발송은 내용의 길이를 90Byte기준으로 이하는 단문, 이상은 장문으로 자동 전송합니다."
    message.Subject = "장문의 경우 장문 제목입니다."
    
    Messages.Add message
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendXMS(txtCorpNum.Text, "", "", "", Messages, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
End Sub

Private Sub btnSendXMS_Same_Click()
        
    Dim Messages As New Collection
    
    Dim message As PBMessage
    
    Dim i As Integer
    
    For i = 0 To 100
        
        Set message = New PBMessage
        
        message.receiver = "11112222"
        message.receiverName = "수신자이름_" + CStr(i + 1)
        
        Messages.Add message
    Next
    
    Dim ReceiptNum As String
    
    ReceiptNum = MessageService.SendLMS(txtCorpNum.Text, "07075106766", "동보전송 제목, 장문에 적용됨", _
                                        "자동인식 발송은 내용의 길이를 90Byte기준으로 이하는 단문, 이상은 장문으로 자동 전송합니다.", _
                                        Messages, txtReserveDT.Text, txtUserID.Text)
    
    If ReceiptNum = "" Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "접수 번호 : " + ReceiptNum
    txtReceiptNum.Text = ReceiptNum
End Sub

Private Sub btnUnitCost_Click()
    Dim unitCost As Single
    
    unitCost = MessageService.GetUnitCost(txtCorpNum.Text, SMS)
    
    If unitCost < 0 Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "SMS 전송 단가 : " + CStr(unitCost)
    
End Sub

Private Sub btnUnitCost_LMS_Click()
    Dim unitCost As Single
    
    unitCost = MessageService.GetUnitCost(txtCorpNum.Text, LMS)
    
    If unitCost < 0 Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "LMS 전송 단가 : " + CStr(unitCost)
End Sub


Private Sub btnUnitCost_MMS_Click()
    Dim unitCost As Single
    
    unitCost = MessageService.GetUnitCost(txtCorpNum.Text, MMS)
    
    If unitCost < 0 Then
        MsgBox ("[" + CStr(MessageService.LastErrCode) + "] " + MessageService.LastErrMessage)
        Exit Sub
    End If
    
    MsgBox "MMS 전송 단가 : " + CStr(unitCost)
End Sub

Private Sub Form_Load()
    MessageService.Initialize LinkID, SecretKey
    MessageService.IsTest = True
    
    
    cboPopbillTOGO.AddItem "LOGIN"
    cboPopbillTOGO.AddItem "CHRG"
   
 
    
End Sub

