Imports WWJSS
Imports GlobarVar
Imports System.IO

Public Class frmMain
    Dim globalVar As GlobalVar = New GlobalVar
    Dim openFileDialog1 As New OpenFileDialog()

    Private Sub btnChooseFile_Click(sender As Object, e As EventArgs) Handles btnChooseFile.Click
        'Dim batchRunner As New batchRunner
        Dim lwItem As New ListViewItem
        Dim lwCount As Integer = 1
        ' globalVar.Path = ""
        ' globalVar.FileName = ""

        If openFileDialog1.ShowDialog() = System.Windows.Forms.DialogResult.OK Then
            Try
                ' Use globalVar to store path and file name 
                ' globalVar.Path = openFileDialog1.FileName.Substring(0, openFileDialog1.FileName.LastIndexOf("\")) 
                ' globalVar.FileName = openFileDialog1.FileName.Substring(openFileDialog1.FileName.LastIndexOf("\") + 1) 

                ' Use batchRunner library build-in list to store the path list. 
                'For Each fileName As String In openFileDialog1.FileNames
                '    batchRunner.AddBatchFile(openFileDialog1.FileName())
                'Next
                batchRunner.AddBatchFile(openFileDialog1.FileNames.ToList())

            Catch Ex As Exception
                MessageBox.Show("Cannot read file from disk. Original error: " & Ex.Message)
            Finally
                'If globalVar.Path <> "" Then
                txtFileName.Text = openFileDialog1.FileName
                lwFilesList.Items.Clear()
                lwCount = 1
                For Each fileName As String In batchRunner.GetFileList()
                    lwItem = New ListViewItem
                    lwItem.Text = lwCount
                    lwItem.SubItems.Add(fileName)
                    lwFilesList.Items.Add(lwItem)
                    lwCount += 1
                Next
                'End If 
            End Try
        End If
    End Sub

    Private Sub btnRun_Click(sender As Object, e As EventArgs) Handles btnRun.Click

        'batchRunner.RunCmd(globalVar.Path, globalVar.FileName)
        batchRunner.RunCmd()

    End Sub

    Private Sub frmMain_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        openFileDialog1.Multiselect = True
        openFileDialog1.InitialDirectory = Directory.GetCurrentDirectory
        openFileDialog1.Filter = "Batch Files (*.bat) | *.bat |Dos Files (*.cmd) | *.cmd |All Files (*.*) | *.*"
        openFileDialog1.FilterIndex = 3
        openFileDialog1.RestoreDirectory = True

        lwFilesList.View = View.Details

        lwFilesList.Columns.Add("No.")
        lwFilesList.Columns.Add("Files Name")

        lwFilesList.Columns.Item(0).Width = 40
        lwFilesList.Columns.Item(1).Width = 1000

    End Sub
End Class
