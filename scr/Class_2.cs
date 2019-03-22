using System.Collections.Generic;
using System.IO;
using System.Text;

namespace WarCommander_Decode_Strings
{
	// Used same method and var names as game.
	// This makes it look messy but will be easier to re-do incase it changes.
    public class Class_2 
	{
        private static List<string> var_6 = new List<string>();

        private static List<BigEndianReader> var_4 = new List<BigEndianReader>();

        private static bool var_5 = false;

        private static int var_10;

        private static List<byte[]> resources;

        private static void Method_3()
		{
			var _loc1_ = new BigEndianReader(new MemoryStream(resources[0]));
			var _loc2_ = new BigEndianReader(new MemoryStream(resources[1]));
			var _loc3_ = new BinaryReader(new MemoryStream(resources[2]));
            var_10 = _loc3_.ReadInt32();
			int _loc4_ = _loc2_.ReadByte();
			var _loc5_ = 0;
			while (_loc5_ < _loc4_)
			{
				Method_2(_loc2_);
				_loc5_++;
			}
			_loc1_.BaseStream.Position = 0;
			_loc4_ = _loc1_.ReadInt32();
			var loc6 = 0;
			while (loc6 < _loc4_)
			{
				Method_1(_loc1_, var_4[loc6 % var_4.Count]);
				loc6++;
			}
			var_5 = true;
		}

		private static void Method_1(BigEndianReader param1, BigEndianReader param2)
		{
			int _loc3_ = param1.ReadInt32();
			byte[] _loc4_ = new byte[_loc3_];
			param1.Read(_loc4_, 0, _loc3_);
            var _loc5_ = new Class_5(param2);
			_loc5_.Method_5(_loc4_);
			var reader = new BinaryReader(new MemoryStream(_loc4_));
			byte[] readbytes = new byte[_loc4_.Length];
			reader.Read(readbytes, 0, _loc4_.Length);
			var_6.Add(Encoding.UTF8.GetString(readbytes));
		}

		private static void Method_2(BigEndianReader param1)
		{
			byte[] _loc2_ = param1.ReadBytes(16);
			var_4.Add(new BigEndianReader(new MemoryStream(_loc2_)));
		}

		private static string Method_6(int param1)
		{
			if (!var_5)
				Method_3();
			return var_6[param1 ^ var_10];
		}

		public static string GetDefinitionName(int value, List<byte[]> binaryDatas)
		{
			resources = binaryDatas;
			return Method_6(value);
		}
	}
}