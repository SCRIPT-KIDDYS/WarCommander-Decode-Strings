using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Text.RegularExpressions;

namespace WarCommander_Decode_Strings
{
    public class Helpers
    {

        public static List<byte[]> binaryDatas = new List<byte[]>();

        public static List<string[]> binHolder = new List<string[]>();

        public static string ScriptFolderPath;

        public static string ERROR = $">>::ERROR::<<{Environment.NewLine}";

        public static string WARNING = $">>::WARNING::<<{Environment.NewLine}";

        public static string INFO = $">>::INFO::<<{Environment.NewLine}";

        public static string BinFilesMissing = string.Join(Environment.NewLine,
            "Place bin file(s) in WCFiles Folder.",
            "Type: Retry to scan again.",
            "Press ENTER to exit.");

        public static string LastChance = string.Join(Environment.NewLine,
            "Last chance to quit.",
            "Type: Exit to quit program.",
            "Or press enter to continue.");

        public static string Exit = string.Join(Environment.NewLine,
            "Files have been decoded.",
            "Press ENTER to exit");

        public static string WCFilesDoesntExist = string.Join(Environment.NewLine,
            "WCFiles Folder does not exist.",
            "Would you like to create it?",
            "Type: Yes to create it and rescan",
            "Press ENTER to exit");

        public static void binLocation() // InProcess
        {
            Console.Clear();
            binHolder.Clear();
            binaryDatas.Clear();
            Console.WriteLine($"{INFO}Drop the folder that contains the 3 bin files and press ENTER");
            string path = Console.ReadLine();
            if (Directory.Exists(path))
            {
                binHolder.Add(Directory.GetFiles(path, "*.bin"));
                foreach (string[] bins in binHolder)
                {
                    if (bins.Length == 3)
                    {
                        foreach (string[] binfiles in binHolder)
                            for (int i = 0; i < binfiles.Length; i++)
                            {
                                string poop = binfiles[i];
                                binaryDatas.Add(File.ReadAllBytes(binfiles[i]));
                            }
                        scriptsLocation();
                    }
                    if (bins.Length > 3)
                    {
                        Console.Clear();
                        Console.WriteLine($"{WARNING}Was looking for 3 bin files, but found '{bins.Length}'{Environment.NewLine}Fix files and press ENTER to search again.");
                    }
                    else
                    {
                        Console.Clear();
                        Console.WriteLine($"{WARNING}Could only find '{bins.Length}' of the 3 bin files.{Environment.NewLine}Fix files and press ENTER to search again.");
                    }
                }
                Console.ReadLine();
                binLocation();

            }
            else
            {
                Console.Clear();
                Console.WriteLine($"{WARNING}No path detected{Environment.NewLine}Fix files and press ENTER to search again.");
                Console.ReadLine();
                binLocation();
            }

            Environment.Exit(0);
        }

        public static void scriptsLocation()
        {
            Console.Clear();

            Console.WriteLine($"{INFO}Drop the folder that contains the scripts files and press ENTER");
            string path = Console.ReadLine();

            if (!Directory.Exists(path))
            {
                Console.Clear();
                Console.WriteLine($"{WARNING}No path detected{Environment.NewLine}Fix files and press ENTER to search again.");
                Console.ReadLine();
                scriptsLocation();
            }
            else
            {
                ScriptFolderPath = path;
                SetupDecoder();
            }

            Environment.Exit(0);
        }

        private static void SetupDecoder()
        {
            Console.Clear();
            foreach (string[] binFiles in binHolder)
            {
                foreach (string binLocation in binFiles)
                { Console.WriteLine($"Found - {binLocation}{Environment.NewLine}"); }
            }
            Console.WriteLine($"Found - {ScriptFolderPath}{Environment.NewLine}");

            Console.WriteLine($"{Environment.NewLine}{WARNING}{LastChance}");

            if (Console.ReadLine().ToLower() == "exit")
            { Environment.Exit(0); }
            else
            { DecodeStrings(); }

            Environment.Exit(0);
        }

        private static void DecodeStrings()
        {
            int fileCount = 0;
            string[] filePath = Directory.GetFiles(ScriptFolderPath, "*.as*", SearchOption.AllDirectories);
            foreach (string path in filePath)
            {
                string originalText = File.ReadAllText(path);
                string regexPattern = @"\(-([0-9]\d{9})\)";
                Match match = Regex.Match(originalText, regexPattern);
                if (match.Success)
                {
                    string result = Regex.Replace(originalText, regexPattern, m =>
                     {
                         int value = -(Convert.ToInt32(m.Groups[1].Value));
                         return "==[[ " + Class_2.GetDefinitionName(value, binaryDatas) + " ]]==";
                     });

                    Console.WriteLine("FOUND - " + path);
                    File.WriteAllText(path.Remove(path.Length - 3) + "___DECODED.as", result);
                    fileCount++;
                }
            }
            Console.WriteLine($"{Environment.NewLine}{INFO}{fileCount} {Exit}");
            Console.ReadLine();
            Environment.Exit(0);
        }
    }


    #region BigEndianReader
    // BigEndianReader found here:
    // https://gist.github.com/Fuebar/7495914

    public class BigEndianReader : BinaryReader
    {
        public BigEndianReader(Stream input) : base(input) { }

        public override short ReadInt16()
        {
            byte[] b = ReadBytes(2);
            return (short)(b[1] + (b[0] << 8));
        }
        public override int ReadInt32()
        {
            byte[] b = ReadBytes(4);
            return b[3] + (b[2] << 8) + (b[1] << 16) + (b[0] << 24);
        }
        public override long ReadInt64()
        {
            byte[] b = ReadBytes(8);
            return b[7] + (b[6] << 8) + (b[5] << 16) + (b[4] << 24) + (b[3] << 32) + (b[2] << 40) + (b[1] << 48) + (b[0] << 56);
        }

        public bool ReadInt32AsBool()
        {
            byte[] b = ReadBytes(4);
            if (b[0] == 0 || b[1] == 0 || b[2] == 0 || b[3] == 0)
                return false;
            else
                return true;
        }

        public string ReadString32BitPrefix()
        {
            int length = ReadInt32();
            return Encoding.ASCII.GetString(ReadBytes(length));
        }

        public float ReadFloat() => (float)ReadDouble();

    }
    #endregion

}