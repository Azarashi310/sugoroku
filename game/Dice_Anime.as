package game {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class Dice_Anime extends MovieClip {
		
		private var diceNumber:int;
		
		public function Dice_Anime() 
		{
			// constructor code
		}
		
		//ダイスの初期化
		public function Init():void
		{
			//サイコロ監視用
			addEventListener(Event.ENTER_FRAME, dice_ENTERFRAME_EvnetHandler);
		}
		
		//監視用
		private function dice_ENTERFRAME_EvnetHandler(e:Event):void 
		{
			if (currentLabel == "stop")
			{
				//エンターフレームの削除
				removeEventListener(Event.ENTER_FRAME, dice_ENTERFRAME_EvnetHandler);
				//ダイスを止める
				stopDice();
			}
		}
		
		//サイコロの表示させる数字
		public function stopDiceNumber(number:int):void
		{
			diceNumber = number;
		}
		
		//ダイスの停止
		private function stopDice():void
		{
			switch(diceNumber)
			{
				case 1:
					{
						dice.gotoAndStop("one");
						break;
					}
				case 2:
					{
						dice.gotoAndStop("two");
						break;
					}
				case 3:
					{
						dice.gotoAndStop("three");
						break;
					}
				case 4:
					{
						dice.gotoAndStop("four");
						break;
					}
				case 5:
					{
						dice.gotoAndStop("five");
						break;
					}
				case 6:
					{
						dice.gotoAndStop("six");
						break;
					}
			}
		}
	}
	
}
