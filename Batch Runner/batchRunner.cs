using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace WWJSS
{
    public class batchRunner
    {
        // List for storing batch files. 
        private static List<String> _fileNameList = new List<String>();

        // Constructor 
        public batchRunner()
        {

        }

        // Add list of batch file
        public static void AddBatchFile(List<String> fileNames)
        {
            _fileNameList.AddRange(fileNames);
        }

        // Add batch file to list using path with fileName 
        public static void AddBatchFile(String path)
        {
            _fileNameList.Add(path);
        }

        // Add batch file to list using path with seperate fileName 
        public static void AddBatchFile(String path, String fileName)
        {
            _fileNameList.Add(path + "\\" + fileName);
        }

        // Get List
        public static List<String> GetFileList()
        {
            return _fileNameList;
        }

        // RunListCmd using _fileNameList
        public static void RunCmd()
        {
            try
            {
                if (_fileNameList != null)
                {
                    foreach (String str in _fileNameList)
                    {
                        System.Diagnostics.Process.Start(str.ToString()); 
                    }
                }
                else
                {
                    Console.WriteLine("_fileNameList is null.");
                }
            }
            catch (Exception ex)
            { 
                Console.WriteLine(ex.Message.ToString());
            }
        }

        // RunListCmd using path with fileName 
        public static void RunCmd(String path)
        {
            try
            {
                System.Diagnostics.Process.Start(path);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message.ToString());
            }
        }

        // RunListCmd using path with seperate fileName 
        public static void RunCmd(String path, String fileName)
        {
            try
            {
                System.Diagnostics.Process.Start(path + "\\" + fileName);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message.ToString());
            }
        }
        
        public static Boolean ProcessDirectory(string targetDirectory, String comStr)
        {
            // Process the list of files found in the directory.
            string[] fileEntries = Directory.GetFiles(targetDirectory);
            foreach (string fileName in fileEntries)
            {
                ProcessFile(fileName, comStr);
            }

            // Recurse into subdirectories of this directory.
            string[] subdirectoryEntries = Directory.GetDirectories(targetDirectory);
            foreach (string subdirectory in subdirectoryEntries)
            {
                if (subdirectory.Contains(comStr))
                {
                    return true;
                }
            }
            return false;
        }

        public static void ProcessFile(string path, String comStr)
        {
            Console.WriteLine("Processed file '{0}'.", path);
            if (path.Contains(comStr))
            {
                Console.WriteLine("File Exists.");
            }
        }
    }
}
