package  
{
	/**
	 * ...
	 * @author AZARASHI
	 */
	public class Main 
	{
		public static var diceNumber:int;
		
		public function Main() 
		{
			
		}
		
		//サイコロの数字を保存
		public static function setNumber(number:int):void
		{
			diceNumber = number;
		}
		
		//サイコロの数字を取得
		public static function getNumber():int
		{
			return diceNumber;
		}
		
	}

}