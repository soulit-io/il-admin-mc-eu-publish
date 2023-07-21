using Ionic.Zip;
using System.IO;

namespace InsuranceLetters.CustomZip
{
    public class ZipHelper
    {
        public static void createZipFromPath(string folderPath, Stream generatedZip)
        {
            using (ZipFile zip = new ZipFile())
            {
                zip.AddDirectory(folderPath);
                zip.Save(generatedZip);
            }
            generatedZip.Position = 0;
        }
    }
}