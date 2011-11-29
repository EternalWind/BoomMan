package 
{
    import State;
    import flash.events.KeyboardEvent;
    import flash.events.TimerEvent;
    import flash.utils.Timer;
    import BoomMan;

    public class BattleScreen extends State
    {
        private var root : BoomMan;
        private var timer : Timer;
        private const INTERVAL : Number = 300;
        private var completeFlag : int;

        public function BattleScreen(game : BoomMan)
        {
            super(game);

            winFlag = 0;
            timer = new Timer(INTERVAL);
            timer.addEventListener(TimerEvent.TIMER, _OnTick);
            this.addEventListener(KeyboardEvent.KEY_DOWN, _OnKeyDown);
            this.addEventListener(KeyboardEvent.KEY_UP, _OnKeyUp);
        }

        public function Load() : void
        {
            //Todo: Load the stuff here.
        }

        public function Unload() : void
        {
            //Todo: Unload the stuff here.
        }

        private function _OnKeyDown(event : KeyboardEvent) : void
        {
            //Todo: Add your key down handler here.
        }

        private function _OnKeyUp(event : KeyboardEvent) : void
        {
            //Todo: Add your key up handler here.
        }

        private function _OnComplete() : void
        {
            //Todo: Add the stuff that will be executed when the battle is completed.
        }

        private function _OnTick(event : TimerEvent) : void
        {
            //Todo: Add your tick event handler here.

            if(completeFlag != 0)
            {
                _OnComplete();
            }
        }
    }
}
