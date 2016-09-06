Public Class GlobalVar

    Dim _path As String
    Dim _fileName As String

    Sub New()
        _path = ""
        _fileName = ""
    End Sub

    Public Property Path() As String
        Get
            Return _path
        End Get
        Set(ByVal value As String)
            _path = value
        End Set
    End Property

    Public Property FileName() As String
        Get
            Return _fileName
        End Get
        Set(ByVal value As String)
            _fileName = value
        End Set
    End Property
End Class
