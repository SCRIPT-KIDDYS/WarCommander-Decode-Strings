using System.Collections.Generic;
using System.IO;

namespace WarCommander_Decode_Strings
{
	// Used same method and var names as game.
	// This makes it look messy but will be easier to re-do incase it changes.
    public class Class_5
    {
		private int var_2 = 0;

		private int var_3 = 0;

		private List<byte> var_1 = new List<byte>();

		private const uint const_1 = 256;

        public Class_5(BigEndianReader param1) => Method_7(param1);

		private uint Method_9() => const_1;

		public void Method_7(BigEndianReader param1)
		{
			var loc2 = 0;
			var loc3 = 0;
			var loc4 = 0;
			loc2 = 0;
			while (loc2 < 256)
			{
				this.var_1.Add((byte)loc2);
				loc2++;
			}
			loc3 = 0;
			loc2 = 0;
			while (loc2 < 256)
			{
				var array = ((MemoryStream)param1.BaseStream).ToArray();
				loc3 = loc3 + this.var_1[loc2] + array[loc2 % array.Length] & 255;
				loc4 = var_1[loc2];
				var_1[loc2] = var_1[loc3];
				var_1[loc3] = (byte)loc4;
				loc2++;
			}
			var_2 = 0;
			var_3 = 0;
		}

		private uint Method_8()
		{
			var loc1 = 0;
			var_2 = var_2 + 1 & 255;
			var_3 = var_3 + var_1[var_2] & 255;
			loc1 = var_1[var_2];
			var_1[var_2] = var_1[var_3];
			var_1[var_3] = (byte)loc1;
			return var_1[loc1 + var_1[var_2] & 255];
		}

		public uint Method_11() => 1;

		public void Method_4(byte[] param1)
		{
			uint loc2 = 0;
			while (loc2 < param1.Length)
			{
				param1[loc2] = (byte)(param1[loc2] ^ Method_8());
				loc2++;
			}
		}

		public void Method_5(byte[] param1) => Method_4(param1);
	}
}