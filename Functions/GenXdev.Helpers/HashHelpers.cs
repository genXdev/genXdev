// ################################################################################
// Part of PowerShell module : GenXdev.Helpers
// Original cmdlet filename  : HashHelpers.cs
// Original author           : René Vaessen / GenXdev
// Version                   : 3.26.2026
// ################################################################################
// Copyright (c) 2026 René Vaessen / GenXdev
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ################################################################################



using System.Security.Cryptography;
using System.Text;

namespace GenXdev.Helpers
{
    public static class Hash
    {
        public static byte[] HexStringToByteArray(string hex)
        {
            return Enumerable.Range(0, hex.Length)
                             .Where(x => x % 2 == 0)
                             .Select(x => Convert.ToByte(hex.Substring(x, 2), 16))
                             .ToArray();
        }

        public static string FormatBytesAsHexString(byte[] value)
        {
            StringBuilder hex = new StringBuilder(value.Length * 2);
            foreach (byte x in value)
            {
                hex.AppendFormat("{0:x2}", x);
            }
            return hex.ToString();
        }

        public static byte[] GetSha256BytesOfString(string value, Encoding encoding = null)
        {
            if (encoding == null)
            {
                encoding = new UTF8Encoding(false);
            }

            return (SHA256.Create()).ComputeHash(encoding.GetBytes(value));
        }

        public static string GetSha256Base64StringOfString(string value)
        {
            return Convert.ToBase64String(GetSha256BytesOfString(value));
        }

        public static byte[] GetSha256Bytes(params byte[][] input)
        {
            using (MemoryStream stream = new MemoryStream())
            {
                foreach (var buffer in input)
                {
                    stream.Write(buffer, 0, buffer.Length);
                }

                stream.Position = 0;

                if (stream.Length == 0)
                    throw new InvalidOperationException("Don't calc hashes of empty data");

                var sha = SHA256.Create();

                return sha.ComputeHash(stream);
            }
        }

        public static string GetSha256HexStringOfString(string value, Encoding encoding = null)
        {
            if (encoding == null)
            {
                encoding = new UTF8Encoding(false);
            }

            return FormatBytesAsHexString(GetSha256BytesOfString(value, encoding));
        }

        public static string GetSha256HexStringOfBytes(byte[] value)
        {
            return FormatBytesAsHexString(GetSha256Bytes(value));
        }

        public static string GetSha512HexStringOfString(string Phrase)
        {
            SHA512 HashTool = SHA512.Create();
            Byte[] PhraseAsByte = System.Text.Encoding.UTF8.GetBytes(Phrase); //getBytes(string.Concat(Phrase, "test");
            Byte[] EncryptedBytes = HashTool.ComputeHash(PhraseAsByte);
            HashTool.Clear();
            StringBuilder hex = new StringBuilder(EncryptedBytes.Length * 2);
            foreach (byte b in EncryptedBytes)
                hex.AppendFormat("{0:x2}", b);
            return "0" + Convert.ToString(hex);
        }
    }
}
